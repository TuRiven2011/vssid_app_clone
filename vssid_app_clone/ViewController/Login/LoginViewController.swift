//
//  LoginViewController.swift
//  clone_vssid
//
//  Created by Phạm Bá Tú on 23/09/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var inviteInstallAppLabel: UILabel!
    
    @IBAction func handleLogin(_ sender: Any) {
        APP_DELEGATE?.appNavigator?.switchToMain()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        navigationController?.isNavigationBarHidden = true
        
        configControlEvent()
        
        // Do any additional setup after loading the view.
    }
    
    private func configControlEvent() {
        inviteInstallAppLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleInviteInstallApp)))
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
}
