//
//  AppDelegate.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 24/09/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = .init()
        
        guard let window = window else {return false}
        
        let tabbarController = TabbarViewController()
//        let tabbarController = LoginViewController()
        
        let navigationController = UINavigationController(rootViewController: tabbarController)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
//        window.
//        UIView.transition(with: window, duration: 0.3, options: [.transitionCrossDissolve],
//                          animations: {}, completion: {completed in
//        })
        
        return true
    }

}
