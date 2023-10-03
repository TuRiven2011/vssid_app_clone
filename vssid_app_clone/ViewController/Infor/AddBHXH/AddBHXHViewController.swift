//
//  AddBHXHViewController.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 01/10/2023.
//

import UIKit

class AddBHXHViewController: UIViewController {

    @IBOutlet weak var end: UITextField!
    @IBOutlet weak var start: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var bhytID: UITextField!
    @IBOutlet weak var sex: UITextField!
    @IBOutlet weak var birth: UITextField!
    var userEntity: UserEntity?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handle)))
    
    }

    @IBAction func doneAction(_ sender: Any) {
        if let vc = navigationController?.viewControllers.first(where: { element in
            return element is LoginViewController
        }) {
            userEntity?.birth = birth.text
            userEntity?.bhyt?.expiredDate = end.text
            userEntity?.bhyt?.registerLocation = location.text
            userEntity?.bhyt?.startDate = start.text
            userEntity?.bhyt?.sex = sex.text
            userEntity?.bhyt?.registerLocation = location.text
            
            AppData.loginInfor = userEntity
            
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }
    
    @objc func handle() {
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
