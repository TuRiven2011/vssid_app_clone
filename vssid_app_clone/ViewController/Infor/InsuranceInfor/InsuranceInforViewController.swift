

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
    
    @IBAction func popBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        binding()
        for arrsub in stackview.arrangedSubviews {
            arrsub.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapStackView(_:))))
        }
    }

    func binding() {
        profileImage.image = UIImage(named: listData[0].infor)
        nameLbl.text = AppData.loginInfor?.name
        time.text = AppData.loginInfor?.bhyt?.startDate
        insuranceIdLbl.text = listData[3].infor
        birdayLbl.text = AppData.loginInfor?.birth
        sex.text = AppData.loginInfor?.bhyt?.sex
        dateLbl.text = listData[6].infor
        addressLbl.text = AppData.loginInfor?.bhyt?.registerLocation
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
