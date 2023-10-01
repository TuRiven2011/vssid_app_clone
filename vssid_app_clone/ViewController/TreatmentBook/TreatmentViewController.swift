

import UIKit

class TreatmentViewController: UIViewController {

    @IBOutlet weak var pickerBottomSheet: UIPickerView!
    
    @IBOutlet weak var yearView: UIView!
    
    @IBOutlet weak var yearLbl: UILabel!
    
    @IBOutlet weak var containtPickerView: UIView!
    
    @IBOutlet weak var doneLbl: UILabel!
    
    @IBOutlet weak var notiLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerBottomSheet.delegate = self
        pickerBottomSheet.dataSource = self
        containtPickerView.transform = .identity.translatedBy(x: 0, y: 300)
        
        yearView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChooseYear)))
        doneLbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapDone)))
    }
    
    @IBAction func popBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @objc func didTapChooseYear(_ gesture: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut) {
            self.containtPickerView.transform = .identity
        }
    }
    
    @objc func didTapDone(_ gesture: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut) {
            self.containtPickerView.transform = .identity.translatedBy(x: 0, y: 300)
        }
    }

}

extension TreatmentViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        100
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(2023 - row)
      }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let yearnum = min(2023 - row, 2023)
        yearLbl.text = String(yearnum)
        notiLbl.text = "Không có thông tin khám chữa bệnh trong năm \(yearnum)"
     }
    
    
}
