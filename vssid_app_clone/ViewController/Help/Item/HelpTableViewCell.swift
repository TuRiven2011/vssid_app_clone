

import UIKit

class HelpTableViewCell: UITableViewCell {
    
    @IBOutlet weak var helpImage: UIImageView!
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var helpLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        configUI()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    private func configUI() {
        viewContent.layer.cornerRadius = 10
//        viewContent.layer.masksToBounds = true
        viewContent.layer.shadowColor = UIColor.black.withAlphaComponent(0.6).cgColor
        viewContent.layer.shadowOpacity = 0.5
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewContent.layer.shadowRadius = 2
        
    }
    
    func binding(help: HelpEnum) {
        helpImage.image = help.icon
        helpLabel.text = help.title.uppercased()
    }
    
}
