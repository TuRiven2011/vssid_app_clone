//
//  RegisterViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 28/09/2023.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    @IBAction func gotoCreatAccount(_ sender: Any) {
        self.navigationController?.pushViewController(CreatAccountViewController(), animated: true)
    }
    

}
