//
//  InsertInforViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 02/10/2023.
//

import UIKit

class InsertInforViewController: UIViewController {
    
    
    @IBOutlet weak var startMonth1: UITextField!
    @IBOutlet weak var endMonth1: UITextField!
    @IBOutlet weak var unit1: UITextField!
    @IBOutlet weak var position1: UITextField!
    @IBOutlet weak var money1: UITextField!
    @IBOutlet weak var address1: UITextField!
    
    
    @IBOutlet weak var startMonth2: UITextField!
    @IBOutlet weak var endMonth2: UITextField!
    @IBOutlet weak var unit2: UITextField!
    @IBOutlet weak var position2: UITextField!
    @IBOutlet weak var money2: UITextField!
    @IBOutlet weak var address2: UITextField!
    
    @IBOutlet weak var startMonth3: UITextField!
    @IBOutlet weak var endMonth3: UITextField!
    @IBOutlet weak var unit3: UITextField!
    @IBOutlet weak var position3: UITextField!
    @IBOutlet weak var money3: UITextField!
    @IBOutlet weak var address3: UITextField!
    
    
    @IBAction func doneAction(_ sender: Any) {
        
        var progress = ProgressEntity()
        progress.address1 = startMonth1.text
        progress.endMonth1 = endMonth1.text
        progress.unit1 = unit1.text
        progress.position1 = position1.text
        progress.money1 = money1.text
        progress.address1 = address1.text
        progress.startMonth2 = startMonth2.text
        progress.endMonth2 = endMonth2.text
        progress.unit2 = unit2.text
        progress.position2 = position2.text
        progress.money2 = money2.text
        progress.address2 = address2.text
        progress.startMonth3 = startMonth3.text
        progress.endMonth3 = endMonth3.text
        progress.unit3 = unit3.text
        progress.position3 = position3.text
        progress.money3 = money3.text
        progress.address3 = address3.text
        
        AppData.progressInfor = progress
//        AppData.progressInfor = .init(startMonth1: startMonth1.text,
//                                      endMonth1: endMonth1.text,
//                                      unit1: unit1.text,
//                                      position1: position1.text,
//                                      money1: money1.text,
//                                      address1: address1.text,
//                                      startMonth2: startMonth2.text,
//                                      endMonth2: endMonth2.text,
//                                      unit2: unit2.text,
//                                      position2: position2.text,
//                                      money2: money2.text,
//                                      address2: address2.text,
//                                      startMonth3: startMonth3.text,
//                                      endMonth3: endMonth3.text,
//                                      unit3: unit3.text,
//                                      position3: position3.text,
//                                      money3: money3.text,
//                                      address3: address3.text)
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))

        // Do any additional setup after loading the view.
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }




}
