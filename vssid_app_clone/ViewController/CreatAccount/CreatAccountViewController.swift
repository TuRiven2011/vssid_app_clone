//
//  CreatAccountViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 28/09/2023.
//

import UIKit

class CreatAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }


    @IBAction func finish(_ sender: Any) {
//        let vc = LoginViewController()
        if let vc = navigationController?.viewControllers.first(where: { element in
            return element is LoginViewController
        }) {
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }
    
}
