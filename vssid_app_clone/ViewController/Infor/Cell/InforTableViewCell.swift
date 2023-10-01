
import UIKit

class InforTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var labelViewCell: UILabel!
    
    @IBOutlet weak var rotationImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        rotationImage.transform = .identity.rotated(by: 3.1)
    }

    
    func binding(data: InforEntity) {
        
        imageViewCell.image = data.image
        labelViewCell.text = data.title
        
    }
    
}
