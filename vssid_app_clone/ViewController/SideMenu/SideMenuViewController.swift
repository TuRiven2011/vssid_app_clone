

import UIKit

class SideMenuViewController: UIViewController {
    
    
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var menuTableView: UITableView!
    
    
    let section1: [SideMenuEnum] = SideMenuEnum.allCases.filter({$0.title != "Đổi mật khẩu" && $0.title != "Đăng xuất"})
    let section2: [SideMenuEnum] = [
        .changePassword,
        .logOut
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    private func configUI() {
        
        dividerView.layer.shadowColor = UIColor.black.cgColor
        dividerView.layer.shadowOpacity = 0.8
        dividerView.layer.shadowOffset = CGSize(width: 0, height: 1)
        dividerView.layer.shadowRadius = 2
        
        nameLabel.text = AppData.loginInfor?.name
        
        idLabel.text = AppData.loginInfor?.bhxhID
        let gradient = CAGradientLayer()
        
        gradient.frame = view.bounds
        gradient.colors = [UIColor(rgb: 0xFF3070C0).cgColor, UIColor(rgb: 0xFF4DABE9).cgColor]
        
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    
    private func configTableView() {
        
        menuTableView.register(.init(nibName: "ItemSideMenuTableViewCell",
                                     bundle: nil), forCellReuseIdentifier: "ItemSideMenuTableViewCell")
        menuTableView.register(.init(nibName: "VersionTableViewCell",
                                     bundle: nil), forCellReuseIdentifier: "VersionTableViewCell")
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.tableHeaderView = .init(frame: .zero)
        menuTableView.tableFooterView = .init(frame: .zero)
        menuTableView.sectionHeaderHeight = 0
        menuTableView.estimatedSectionHeaderHeight = 0
        menuTableView.contentInset = .init(top: -20, left: 0, bottom: 0, right: 0)
    }
    
}

extension SideMenuViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0) {
            return section1.count
        } else if section == 1 {
            return section2.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "VersionTableViewCell", for: indexPath) as? VersionTableViewCell else {return .init()}
            cell.selectionStyle = .none
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemSideMenuTableViewCell", for: indexPath) as? ItemSideMenuTableViewCell else {return .init()}
            cell.selectionStyle = .none
            indexPath.section == 0 ? cell.binding(data: section1[indexPath.row]) : cell.binding(data: section2[indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2 {
            return UITableView.automaticDimension
        } else {
            return 54
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            switch section1[indexPath.row] {
            case .news:
                let vc = NewsViewController()
                navigationController?.pushViewController(vc, animated: true)
            case .notification:
                let vc = NotificationViewController()
                navigationController?.pushViewController(vc, animated: true)
            case .personal:
                dismiss(animated: true)
            case .service:
                
                
                let res = ["tab": 1]
                NotificationCenter.default
                    .post(name:          .SELECT_TAB_BAR,
                             object: nil,
                             userInfo: res)
                
//                let vc = ServiceViewController()
//                navigationController?.pushViewController(vc, animated: true)
            case .search:
                
                
                let res = ["tab": 2]
                NotificationCenter.default
                    .post(name:          .SELECT_TAB_BAR,
                             object: nil,
                             userInfo: res)
                
//                let vc = SearchViewController.instantiate { coder in
//                    return SearchViewController(coder: coder)
//                }
//                navigationController?.pushViewController(vc, animated: true)
            case .help:
                
                let res = ["tab": 3]
                NotificationCenter.default
                    .post(name:          .SELECT_TAB_BAR,
                             object: nil,
                             userInfo: res)
                
//                let vc = HelpViewController()
//                navigationController?.pushViewController(vc, animated: true)
            case .setting:
                break
            default:
                break
            }
        } else if indexPath.row == 1 {
            switch section2[indexPath.row] {
            case .changePassword:
                let vc = ChangePasswordViewController()
                navigationController?.pushViewController(vc, animated: true)
            case .logOut:
                AppData.logout()
            default:
                break
            }
        } else {
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
}
