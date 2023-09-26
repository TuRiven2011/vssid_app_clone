//
//  AppNavigator.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 26/09/2023.
//

import Foundation
import UIKit

protocol AppNavigatorType: AnyObject {
    var window: UIWindow? { get }
    func start()
    func switchToMain()
    func swichToLogin()
    func switchTo(viewController: UIViewController)
}

final class AppNavigator: AppNavigatorType {
    var window: UIWindow?
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        //        if AppData.isLogin {
        //            switchToMain()
        //        } else {
        //            swichToLogin()
        //        }
    }
    
    func swichToLogin() {
        let vc = LoginViewController()
        switchTo(viewController: UINavigationController(rootViewController: vc))
    }
    
    func switchToMain() {
        let vc = TabbarViewController()
        switchTo(viewController: vc)
    }
    
    func switchTo(viewController: UIViewController) {
        guard let window = window else { return }
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.3, options: [.transitionCrossDissolve],
                          animations: {}, completion: {completed in
        })
    }
}
