//
//  NewsTableViewCell.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 28/09/2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var dateChild2: UILabel!
    @IBOutlet weak var dateChild1: UILabel!
    @IBOutlet weak var title3Label: UILabel!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func binding(data: NewsEntity) {
        titleLabel.text = data.title
        title1Label.text = data.title1
        title2Label.text = data.title2
        title3Label.text = data.title3
    }
    
}
