

import UIKit
import MessageUI

class HelpViewController: UIViewController {
    
    @IBOutlet weak var helpTableView: UITableView!
    @IBOutlet weak var headerImage: UIImageView!
    
    let listData: [HelpEnum] = [
        .userManual,
        .chatBot,
        .hotline,
        .email,
        .question,
        .request
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tesst)))
        setupNavigationBar(title: "TRUNG TÂM TRỢ GIÚP")
        configTableView()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.isHidden = true
        
    }
    
    private func setupNavigationBar(title: String) {
        
        navigationItem.title = title
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = UIColor(rgb: 0xFF3070C0)
            appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance

        } else {
            self.navigationController?.navigationBar.tintColor = .white
            self.navigationController?.navigationBar.barTintColor = UIColor(rgb: 0xFF3070C0)
            self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
        
        let menu = UIImageView(image: .init(named: "menu"))
        menu.isUserInteractionEnabled = true
        menu.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showSideBar)))
        
        menu.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.navigationBar.addSubview(menu)
        
        if let navigationBar = navigationController?.navigationBar {
            [
                menu.widthAnchor.constraint(equalToConstant: 26),
                menu.heightAnchor.constraint(equalToConstant: 26),
                menu.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 20),
                menu.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -10),
            ].forEach({$0.isActive = true})
        }
        
    }
    
    /// thiết lập tableView
    private func configTableView() {
        helpTableView.register(.init(nibName: "HelpTableViewCell", bundle: nil), forCellReuseIdentifier: "HelpTableViewCell")
        helpTableView.dataSource = self
        helpTableView.delegate = self
        helpTableView.contentInset = .init(top: 10, left: 0, bottom: 50, right: 0)
    }
    
    
    /// gửi email
    private func sendEmail() {
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        } else {
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
             
            // Configure the fields of the interface.
            composeVC.setToRecipients(["address@example.com"])
            composeVC.setSubject("Hello!")
            composeVC.setMessageBody("Hello from California!", isHTML: false)
            self.present(composeVC, animated: true, completion: nil)
        }
    }
}




/// objc function
extension HelpViewController {
    @objc func tesst() {
        let vc = SideMenuViewController.instantiate { coder in
            return SideMenuViewController(coder: coder)
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func showSideBar() {
        NotificationCenter.default.post(name: .SHOW_SIDE_MENU, object: nil)
    }
    
    @objc func gotoNotificationVC() {
        let vc = NotificationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

/// tableView Delegate, Datasource
extension HelpViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HelpTableViewCell", for: indexPath) as? HelpTableViewCell else {return .init()}
        cell.binding(help: listData[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch listData[indexPath.row] {
        case .userManual:
            CommonUtils.shared.openURL(urlString: "https://baohiemxahoi.gov.vn/gioithieu/Pages/tai-ung-dung-vssid.aspx")
        case .chatBot:
            break
        case .hotline:
            CommonUtils.shared.makePhoneCall(phoneNumber: "1900 9068")
        case .email:
            sendEmail()
        case .question:
            let vc = CommonQuestionViewController()
            navigationController?.pushViewController(vc, animated: true)
            break
        case .request:
            CommonUtils.shared.openURL(urlString: "https://baohiemxahoi.gov.vn/chuyen-trang-bhxh-bhyt-va-phan-anh-kien-nghi/Pages/default.aspx")
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}


/// email Delegate
extension HelpViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
