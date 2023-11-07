

import UIKit

class DetailInsuranceViewController: UIViewController {

    @IBOutlet weak var endMonth: UILabel!
    @IBOutlet weak var startMonth: UILabel!
    @IBOutlet weak var backButton: UIImageView!
    
    @IBOutlet weak var money2: UILabel!
    @IBOutlet weak var money1: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var nameCty: UILabel!
    @IBOutlet weak var position: UILabel!
    
    
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backButton.isUserInteractionEnabled = true
        backButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(back)))
        
        if index == 1 {
            startMonth.text = AppData.progressInfor?.startMonth1
            endMonth.text = AppData.progressInfor?.endMonth1
            position.text = AppData.progressInfor?.position1
            let attribte = NSAttributedString(string: "Nơi làm việc: ", attributes: [.font : UIFont.systemFont(ofSize: 14)])
            let attribtes = NSAttributedString(string: AppData.progressInfor?.address1 ?? "", attributes: [.font : UIFont.systemFont(ofSize: 14, weight: .bold)])
            let attbt = NSMutableAttributedString()
            attbt.append(attribte)
            attbt.append(attribtes)
            address.attributedText = attbt
            
            let attribteCty = NSAttributedString(string: "Đơn vị công tác: ", attributes: [.font : UIFont.systemFont(ofSize: 14)])
            let attribtesCty = NSAttributedString(string: AppData.progressInfor?.unit1 ?? "", attributes: [.font : UIFont.systemFont(ofSize: 14, weight: .bold)])
            let attbtCty = NSMutableAttributedString()
            attbtCty.append(attribteCty)
            attbtCty.append(attribtesCty)
            nameCty.attributedText = attbtCty
            
            money1.text = AppData.progressInfor?.money1
            money2.text = AppData.progressInfor?.money1
        } else if index == 2 {
            startMonth.text = AppData.progressInfor?.startMonth2
            endMonth.text = AppData.progressInfor?.endMonth2
            position.text = AppData.progressInfor?.position2
            let attribte = NSAttributedString(string: "Nơi làm việc: ", attributes: [.font : UIFont.systemFont(ofSize: 14)])
            let attribtes = NSAttributedString(string: AppData.progressInfor?.address2 ?? "", attributes: [.font : UIFont.systemFont(ofSize: 14, weight: .bold)])
            let attbt = NSMutableAttributedString()
            attbt.append(attribte)
            attbt.append(attribtes)
            address.attributedText = attbt
            
            let attribteCty = NSAttributedString(string: "Đơn vị công tác: ", attributes: [.font : UIFont.systemFont(ofSize: 14)])
            let attribtesCty = NSAttributedString(string: AppData.progressInfor?.unit2 ?? "", attributes: [.font : UIFont.systemFont(ofSize: 14, weight: .bold)])
            let attbtCty = NSMutableAttributedString()
            attbtCty.append(attribteCty)
            attbtCty.append(attribtesCty)
            nameCty.attributedText = attbtCty
            money1.text = AppData.progressInfor?.money2
            money2.text = AppData.progressInfor?.money2
        } else if index == 3 {
            startMonth.text = AppData.progressInfor?.startMonth3
            endMonth.text = AppData.progressInfor?.endMonth3
            position.text = AppData.progressInfor?.position3
            nameCty.text = AppData.progressInfor?.unit3
            let attribte = NSAttributedString(string: "Nơi làm việc: ", attributes: [.font : UIFont.systemFont(ofSize: 14)])
            let attribtes = NSAttributedString(string: AppData.progressInfor?.address3 ?? "", attributes: [.font : UIFont.systemFont(ofSize: 14, weight: .bold)])
            let attbt = NSMutableAttributedString()
            attbt.append(attribte)
            attbt.append(attribtes)
            address.attributedText = attbt
            
            let attribteCty = NSAttributedString(string: "Đơn vị công tác: ", attributes: [.font : UIFont.systemFont(ofSize: 14)])
            let attribtesCty = NSAttributedString(string: AppData.progressInfor?.unit3 ?? "", attributes: [.font : UIFont.systemFont(ofSize: 14, weight: .bold)])
            let attbtCty = NSMutableAttributedString()
            attbtCty.append(attribteCty)
            attbtCty.append(attribtesCty)
            nameCty.attributedText = attbtCty
            
            money1.text = AppData.progressInfor?.money3
            money2.text = AppData.progressInfor?.money3
        }
        
        // Do any additional setup after loading the view.
    }

    @objc func back() {
        
        dismiss(animated: true)
//        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
