

import UIKit

class AddBHXHViewController: UIViewController {

    @IBOutlet weak var fiveYearTF: UITextField!
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
            
            var bhyt = BhytEntity()
            bhyt.birth = birth.text
            bhyt.expiredDate = end.text
            bhyt.registerLocation = location.text
            bhyt.startDate = start.text
            bhyt.endDate = end.text
            bhyt.bhytID = bhytID.text
            bhyt.sex = sex.text
            bhyt.registerLocation = location.text
            bhyt.fiveYear = fiveYearTF.text
            
            AppData.bhyt = bhyt
            
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
