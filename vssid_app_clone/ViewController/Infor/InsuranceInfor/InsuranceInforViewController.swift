//
//  InsuranceInforViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class InsuranceInforViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var insuranceIdLbl: UILabel!
    
    @IBOutlet weak var birdayLbl: UILabel!
    
    @IBOutlet weak var sex: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var addressLbl: UILabel!

    @IBOutlet weak var benefitsInforLbl: UILabel!
    
    @IBOutlet weak var stackview: UIStackView!
    
    let listData: [InsuranceInforEnum] = [.profileImage, .name, .date, .insuranceId, .birthday, .sex, .time, .address, .benefit ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        binding()
        for arrsub in stackview.arrangedSubviews {
            arrsub.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapStackView(_:))))
        }
    }

    func binding() {
        profileImage.image = UIImage(named: listData[0].infor)
        nameLbl.text = listData[1].infor
        time.text = listData[2].infor
        insuranceIdLbl.text = listData[3].infor
        birdayLbl.text = listData[4].infor
        sex.text = listData[5].infor
        dateLbl.text = listData[6].infor
        addressLbl.text = listData[7].infor
        benefitsInforLbl.text = listData[8].infor
        
    }
    
    @objc func didTapStackView(_ gesture: UITapGestureRecognizer) {
        guard let target = gesture.view else {return}
        if stackview.arrangedSubviews.firstIndex(of: target) == 0 {
            let vc = UseCardViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            let vc = InsuranceExampleViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
  
}
