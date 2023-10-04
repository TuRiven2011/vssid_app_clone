

import UIKit

class InsuranceProgressCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var eye3: UIView!
    @IBOutlet weak var eye2: UIView!
    @IBOutlet weak var eye1: UIView!
    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet var collectionStackView: [UIStackView]!
    
    @IBOutlet weak var totalTime: UILabel!
    
    @IBOutlet weak var startMonth1: UILabel!
    @IBOutlet weak var endMonth1: UILabel!
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var position1: UILabel!
    
    @IBOutlet weak var startMonth2: UILabel!
    @IBOutlet weak var endMonth2: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var position2: UILabel!
    
    @IBOutlet weak var startMonth3: UILabel!
    @IBOutlet weak var endMonth3: UILabel!
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var position3: UILabel!
    
    
    
    var tapEye1Completion: (() -> Void)?
    var tapEye2Completion: (() -> Void)?
    var tapEye3Completion: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        startMonth1.text = AppData.progressInfor?.startMonth1
        endMonth1.text = AppData.progressInfor?.endMonth1
        name1.text = AppData.progressInfor?.unit1
        position1.text = AppData.progressInfor?.position1
        startMonth2.text = AppData.progressInfor?.startMonth2
        endMonth2.text = AppData.progressInfor?.endMonth2
        name2.text = AppData.progressInfor?.unit2
        position2.text = AppData.progressInfor?.position2
        startMonth3.text = AppData.progressInfor?.startMonth3
        endMonth3.text = AppData.progressInfor?.endMonth3
        name3.text = AppData.progressInfor?.unit3
        position3.text = AppData.progressInfor?.position3
        
        
        contentStackView.layer.borderWidth = 1
        contentStackView.layer.borderColor = UIColor(rgb: 0xFF446699).cgColor
        
        eye1.isUserInteractionEnabled = true
        eye2.isUserInteractionEnabled = true
        eye3.isUserInteractionEnabled = true
        
        eye1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapEye1)))
        eye2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapEye2)))
        eye3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapEye3)))
        
        contentStackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapEye1)))
        
        
    }
    
    @objc func handleTapEye1() {
        tapEye1Completion?()
    }
    
    @objc func handleTapEye2() {
        tapEye2Completion?()
    }
    
    @objc func handleTapEye3() {
        tapEye3Completion?()
    }
    
    

}

