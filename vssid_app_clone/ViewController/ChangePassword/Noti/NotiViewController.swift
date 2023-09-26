//
//  NotiViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 26/09/2023.
//

import UIKit

class NotiViewController: UIViewController {

    @IBOutlet weak var contentLbl: UILabel!
    
    
    var text : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        contentLbl.text = text
       
    }


    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true)
        
    }
    
    static func present(_ source: UIViewController, text: String) {
        let vc = NotiViewController()
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        vc.text = text
        source.present(vc, animated: true)
        
    }

}
