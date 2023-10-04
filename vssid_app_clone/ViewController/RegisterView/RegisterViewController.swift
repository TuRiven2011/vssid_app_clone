

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var bhxhIDTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cccdTextField: UITextField!
    
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    @IBAction func addProgressAction(_ sender: Any) {
        let vc = InsertInforViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

      configControlEvent()
        
    }
    
    @IBAction func handleAddBHXH(_ sender: Any) {
        
        let userEntity = UserEntity(name: nameTextField.text,
                                    bhxhID: bhxhIDTextField.text,
                                    cccd: cccdTextField.text,
                                    phone: phoneTextField.text,
                                    address: addressTextField.text)
        
        let vc = AddBHXHViewController()
        
        vc.userEntity = userEntity
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func gotoCreatAccount(_ sender: Any) {
        
        let userEntity = UserEntity(name: nameTextField.text,
                                    bhxhID: bhxhIDTextField.text,
                                    cccd: cccdTextField.text,
                                    phone: phoneTextField.text,
                                    address: addressTextField.text)
        
        let vc = CreatAccountViewController()
        
        vc.userEntity = userEntity
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    private func configControlEvent() {
        backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }

}

extension RegisterViewController {
    @objc func handleBack() {
        navigationController?.popViewController(animated: true)
    }
}
