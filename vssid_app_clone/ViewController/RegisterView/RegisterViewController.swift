

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    @IBAction func gotoCreatAccount(_ sender: Any) {
        self.navigationController?.pushViewController(CreatAccountViewController(), animated: true)
    }
    

}
