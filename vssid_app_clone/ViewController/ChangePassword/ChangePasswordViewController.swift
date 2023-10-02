

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var oldPass: UITextField!
    
    @IBOutlet weak var newPass: UITextField!
    
    @IBOutlet weak var newPass2: UITextField!
    
    var label = UILabel()
    var notiView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapBG(_:))))
    }

    @IBAction func popBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func finishChangePass(_ sender: Any) {
        
        if oldPass.text?.isEmpty == true || newPass.text?.isEmpty == true || newPass2.text?.isEmpty == true{
            label.text = "Vui lòng nhập đủ thông tin!"
            
        }
        if newPass.text != newPass2.text {
            label.text = "Mật khẩu nhập lại không khớp!"
        }
        addNoti()
    }
    
    func addNoti() {
        
        NotiViewController.present(self, text: label.text ?? "")
        
        
    }
    
    @objc func didTapBG(_ gesture: UITapGestureRecognizer) {
        notiView.removeFromSuperview()
    }
    
}
