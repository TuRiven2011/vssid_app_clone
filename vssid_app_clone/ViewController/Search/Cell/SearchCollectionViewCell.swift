

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var labelViewCell: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func binding(data: SearchEnum) {
        imageViewCell.image = data.icon
        labelViewCell.text = data.title
        
    }
}
