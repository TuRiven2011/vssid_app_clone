//
//  ServiceViewController.swift
//  vssid_app_clone
//
//  Created by Đặng An Hưng on 25/09/2023.
//

import UIKit

class ServiceViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var serviceView: UIView!
    
    @IBOutlet weak var historyView: UIView!
    
    @IBOutlet weak var containPagevc: UIView!
    
    
    var pageVC = UIPageViewController()
    var vcs : [UIViewController] = []
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar(title: "DỊCH VỤ CÔNG")
        serviceView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChange(_:))))
        historyView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapChange(_:))))
        let vc1 = ListNotiViewController()
        let vc2 = ListNotiViewController()
        vcs.append(vc1)
        vcs.append(vc2)
        setupPageController()
        
    }
    
    private func setupPageController() {
        self.pageVC = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        self.pageVC.dataSource = self
        self.pageVC.delegate = self
        self.pageVC.view.backgroundColor = .clear
        self.pageVC.view.frame = containPagevc.frame
        self.pageVC.setViewControllers([vcs[0]], direction: .forward, animated: false)
        self.addChild(self.pageVC)
        self.view.addSubview(self.pageVC.view)
        self.pageVC.didMove(toParent: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.isHidden = true
        
    }
    
    private func setupNavigationBar(title: String) {
        
        navigationItem.title = title
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = UIColor(rgb: 0xFF2B65AC)
            appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance

        } else {
            self.navigationController?.navigationBar.tintColor = .white
            self.navigationController?.navigationBar.barTintColor = UIColor(rgb: 0xFF2B65AC)
            self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
        
        let menu = UIImageView(image: .init(named: "menu"))
        menu.isUserInteractionEnabled = true
        menu.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showSideBar)))
        
        menu.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.navigationBar.addSubview(menu)
        
        if let navigationBar = navigationController?.navigationBar {
            [
                menu.widthAnchor.constraint(equalToConstant: 26),
                menu.heightAnchor.constraint(equalToConstant: 26),
                menu.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 20),
                menu.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -10),
            ].forEach({$0.isActive = true})
        }
        
    }

    
    @objc func didTapChange(_ gesture: UITapGestureRecognizer) {
        guard let target = gesture.view else {return}
        if target == serviceView {
            check(serviceView)
        } else {
            check(historyView)
        }
    }
    
    func check(_ view: UIView) {
        if view == serviceView {
            for sub in serviceView.subviews {
                if let sub = sub as? UILabel {
                    sub.textColor = .blue
                } else {
                    sub.tintColor = .blue
                }
            }
            for sub in historyView.subviews {
                if let sub = sub as? UILabel {
                    sub.textColor = .gray
                } else {
                    sub.tintColor = .gray
                }
            }

        } else {
            for sub in serviceView.subviews {
                if let sub = sub as? UILabel {
                    sub.textColor = .gray
                } else {
                    sub.tintColor = .gray
                }
            }
            for sub in historyView.subviews {
                if let sub = sub as? UILabel {
                    sub.textColor = .blue
                } else {
                    sub.tintColor = .blue
                }
            }
        }
        
    }
 
}

extension ServiceViewController {
    @objc func showSideBar() {
        NotificationCenter.default.post(name: .SHOW_SIDE_MENU, object: nil)
    }
    
    @objc func gotoNotificationVC() {
        let vc = NotificationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ServiceViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        print("before")
        if currentIndex == 0 {
            return nil
        }
        currentIndex -= 1
        check(historyView)
        return vcs [currentIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        print("after")
        if currentIndex == 1 {
            return nil
        }
        currentIndex += 1
        check(serviceView)
        return vcs [currentIndex]
        
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 1
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        currentIndex
    }
    
}
