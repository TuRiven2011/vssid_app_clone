

import UIKit

class SearchPlaceViewController: UIViewController {

    @IBOutlet weak var chooseProvinceView: UIView!
    
    @IBOutlet weak var chooseDistrictView: UIView!
    
    @IBOutlet weak var doneView: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var provinceLbl: UILabel!
    
    @IBOutlet weak var districtLbl: UILabel!
    
    @IBOutlet weak var containtPickerView: UIView!
    
    @IBOutlet weak var titleLbl: UILabel!
    let listData = Place()
    var titleText: String = ""
    
    var currentDistrict: String = ""
    var curruntData: [String] = []
    
    var chooseProvince = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = titleText
        pickerView.delegate = self
        pickerView.dataSource = self
        containtPickerView.transform = .identity.translatedBy(x: 0, y: 300)
        
        chooseProvinceView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChooseProvince(_:))))
        chooseDistrictView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChooseDistrict(_:))))
        doneView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapDone(_:))))
    }
    
    @IBAction func popBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @objc func didTapChooseProvince(_ gesture: UITapGestureRecognizer) {
        selectProvince()
        pickerView.reloadAllComponents()
        pickerView.selectRow(0, inComponent: 0, animated: true)
        chooseProvince = true
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut) {
            self.containtPickerView.transform = .identity
        }
        
    }
    
    @objc func didTapChooseDistrict(_ gesture: UITapGestureRecognizer) {
        changeProvince(currentDistrict)
        pickerView.reloadAllComponents()
        pickerView.selectRow(0, inComponent: 0, animated: true)
        chooseProvince = false
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut) {
            self.containtPickerView.transform = .identity
        }
    }
    
    @objc func didTapDone(_ gesture: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut) {
            self.containtPickerView.transform = .identity.translatedBy(x: 0, y: 300)
        }
    }
    

    
    func changeProvince(_ province: String) {
        curruntData = []
        curruntData.append("-- Chọn Huyện ---")
        for x in listData.districts {
            if province == x.key {
                for z in x.value {
                    curruntData.append(z)
                }
            }
        }
        
    }
    
    func selectProvince() {
        curruntData = []
        curruntData.append("-- Chọn tỉnh ---")
        for x in listData.districts {
            curruntData.append(x.key)
        }
    }


}

extension SearchPlaceViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return curruntData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return curruntData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if chooseProvince {
            currentDistrict = curruntData[row]
            provinceLbl.text = curruntData[row]
        } else {
            districtLbl.text = curruntData[row]
        }
    }
    
    
}
