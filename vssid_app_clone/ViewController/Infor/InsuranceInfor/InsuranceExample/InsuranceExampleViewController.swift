

import UIKit

class InsuranceExampleViewController: UIViewController, UINavigationControllerDelegate {
    @IBOutlet weak var dismissBtnView: UIImageView!
    
    @IBOutlet weak var imgBHXH: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dismissBtnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapDismiss(_:))))
        
        //        viewBHXH.transform = CGAffineTransform(rotationAngle: -(.pi/2))
        
        imgBHXH.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAddImage)))
    }
    
    @objc func didTapDismiss(_ gesture: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func handleAddImage() {
        imagePicker.modalPresentationStyle = UIModalPresentationStyle.currentContext
        imagePicker.delegate = self
        self.present(imagePicker, animated: true)
    }

}

extension InsuranceExampleViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let tempImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage

        imgBHXH.image = tempImage
        
        imagePicker.dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true)
    }
}
