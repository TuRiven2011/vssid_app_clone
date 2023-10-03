

import UIKit

class InsuranceProgressCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var eye3: UIImageView!
    @IBOutlet weak var eye2: UIImageView!
    @IBOutlet weak var eye1: UIImageView!
    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet var collectionStackView: [UIStackView]!
    
    var tapEye1Completion: (() -> Void)?
    var tapEye2Completion: (() -> Void)?
    var tapEye3Completion: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentStackView.layer.borderWidth = 1
        contentStackView.layer.borderColor = UIColor(rgb: 0xFF446699).cgColor
        
        eye1.isUserInteractionEnabled = true
        eye2.isUserInteractionEnabled = true
        eye3.isUserInteractionEnabled = true
        
        eye1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapEye1)))
        
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

