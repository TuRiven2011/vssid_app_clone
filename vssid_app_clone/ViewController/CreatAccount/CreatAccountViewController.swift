

import UIKit

class CreatAccountViewController: UIViewController {
    
    var userEntity: UserEntity?

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }


    @IBAction func finish(_ sender: Any) {
        
//        let vc = LoginViewController()
        if let vc = navigationController?.viewControllers.first(where: { element in
            return element is LoginViewController
        }) {
            
            AppData.loginInfor = userEntity
            
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }
    
}
