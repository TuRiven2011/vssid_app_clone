

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var inviteInstallAppLabel: UILabel!
    
    @IBOutlet weak var registerLblView: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var vssidTextField: UITextField!
    
    @IBAction func handleLogin(_ sender: Any) {
        
        
        if vssidTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
            
            let vc = NotiViewController()
            vc.text = "Vui lòng nhập đủ thông tin"
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = . overCurrentContext
            
            present(vc, animated: true)
            
        } else {
            AppData.logIn()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        navigationController?.isNavigationBarHidden = true
        
        configControlEvent()
        registerLblView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapRegister(_:))))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func didTapRegister(_ gesture: UITapGestureRecognizer) {
        let vc = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func configControlEvent() {
        inviteInstallAppLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleInviteInstallApp)))
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(endEdit)))
    }
    
    private func inviteInstallApp() {
        let string = "Mời cài đặt VssID: \nHệ điều hành Android tải tại: https://apps.apple.com/vn/app/vssid/id1521647264?l=vi"
        let url = URL(string: "https://apps.apple.com/vn/app/vssid/id1521647264?l=vi")!
        
        let activityViewController =
        UIActivityViewController(activityItems: [string, url],
                                 applicationActivities: nil)
        
        present(activityViewController, animated: true)
        
    }
    
}

extension LoginViewController {
    @objc func handleInviteInstallApp() {
        inviteInstallApp()
    }
    
    @objc func endEdit() {
        view.endEditing(true)
    }
}
