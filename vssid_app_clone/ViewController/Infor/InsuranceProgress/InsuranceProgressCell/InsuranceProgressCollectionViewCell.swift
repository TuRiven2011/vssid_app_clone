//
//  InsuranceProgressCollectionViewCell.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class InsuranceProgressCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet var collectionStackView: [UIStackView]!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentStackView.layer.borderWidth = 1
        contentStackView.layer.borderColor = UIColor.blue.cgColor

        
    }

}

