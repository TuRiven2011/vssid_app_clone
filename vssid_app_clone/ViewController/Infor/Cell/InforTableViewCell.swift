//
//  InforTableViewCell.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

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
