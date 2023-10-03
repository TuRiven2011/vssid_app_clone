

import UIKit

class InforViewController: UIViewController {

    @IBOutlet weak var cccdLbl: UILabel!
    
    @IBOutlet weak var inforTableView: UITableView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var insuranceIdLbl: UILabel!
    
    @IBOutlet weak var birdayLbl: UILabel!
    
    @IBOutlet weak var personalIDLbl: UILabel!
    
    @IBOutlet weak var phoneLbl: UILabel!
    
    @IBOutlet weak var addressLbl: UILabel!
    
    let listData: [InforEnum] = [.profileImage, .name, .insuranceId, .birthday, .personalID, .phone, .address]
    let listEntity : [InforEntity] = [
        .init(image: UIImage(named: "new_icon_the_bhyt")!, title: "THẺ BHYT"),
        .init(image: UIImage(named: "new_icon_qttg")!, title: "QUÁ TRÌNH THAM GIA"),
        .init(image: UIImage(named: "new_icon_tt_huong")!, title: "THÔNG TIN HƯỞNG"),
        .init(image: UIImage(named: "new_icon_so_kcb")!, title: "SỔ KHÁM CHỮA BỆNH")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar(title: "Quản lý cá nhân".uppercased())
        configUI()
        configTableView()
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
    
    private func configUI() {
        profileImage.image = UIImage(named: listData[0].infor)
        nameLbl.text = AppData.loginInfor?.name
        insuranceIdLbl.text = AppData.loginInfor?.bhxhID
        cccdLbl.text = AppData.loginInfor?.cccd
        phoneLbl.text = AppData.loginInfor?.phone
        addressLbl.text = AppData.loginInfor?.address
        birdayLbl.text = AppData.loginInfor?.birth
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
        
        let notification = UIImageView(image: .init(named: "tb3"))
        notification.isUserInteractionEnabled = true
        notification.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gotoNotificationVC)))
        
        notification.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.navigationBar.addSubview(notification)
        
        if let navigationBar = navigationController?.navigationBar {
            [
                notification.widthAnchor.constraint(equalToConstant: 26),
                notification.heightAnchor.constraint(equalToConstant: 26),
                notification.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: -20),
                notification.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -10),
            ].forEach({$0.isActive = true})
        }

    }
  
    private func configTableView() {
        inforTableView.register(.init(nibName: "InforTableViewCell", bundle: nil), forCellReuseIdentifier: "InforTableViewCell")
        inforTableView.delegate = self
        inforTableView.dataSource = self
    }
  

}

extension InforViewController {
    @objc func showSideBar() {
        NotificationCenter.default.post(name: .SHOW_SIDE_MENU, object: nil)
    }
    
    @objc func gotoNotificationVC() {
        let vc = NotificationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension InforViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listEntity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InforTableViewCell", for: indexPath) as? InforTableViewCell else {return .init()}
        cell.binding(data: listEntity[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = InsuranceInforViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 1 {
            let vc = InsuranceProgessViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 3 {
            let vc = TreatmentViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
}
