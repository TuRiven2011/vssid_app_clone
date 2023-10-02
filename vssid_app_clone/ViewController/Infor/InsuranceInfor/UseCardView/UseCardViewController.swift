

import UIKit

class UseCardViewController: UIViewController {

    @IBOutlet weak var dismissBtnView: UIImageView!
    
    @IBOutlet weak var qrImage: UIImageView!
    
    @IBOutlet weak var insuranceIdLbl: UILabel!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var qrView: UIView!
    
    @IBOutlet weak var cameraView: UIView!
    let listData: [UseCardEnum] = [ .qrImage, .insuranceId, .name]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qrView.layer.borderWidth = 2
        qrView.layer.borderColor = UIColor.white.cgColor
        cameraView.layer.borderWidth = 2
        cameraView.layer.borderColor = UIColor.white.cgColor
        
        binding()
        dismissBtnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapDismiss(_:))))
    }

    func binding() {
        qrImage.image = UIImage(named: listData[0].infor)
        insuranceIdLbl.text = listData[1].infor
        nameLbl.text = listData[2].infor
    }
    
    @objc func didTapDismiss(_ gesture: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }

}
