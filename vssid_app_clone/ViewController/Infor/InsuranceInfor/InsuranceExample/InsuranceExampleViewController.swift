//
//  InsuranceExampleViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class InsuranceExampleViewController: UIViewController {
    @IBOutlet weak var dismissBtnView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dismissBtnView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapDismiss(_:))))
    }

    @objc func didTapDismiss(_ gesture: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }

}