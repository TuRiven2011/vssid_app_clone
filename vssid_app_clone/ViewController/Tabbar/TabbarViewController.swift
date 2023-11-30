

import UIKit
import SideMenu
import ESTabBarController_swift

class TabbarViewController: ESTabBarController {
    
    
    var menu: SideMenuNavigationController?
    
    let tab1 = ESTabBarItem(title: "QL cá nhân",
                            image: UIImage(named: "qlcn"),
                            selectedImage: UIImage(named: "qlcn"),
                            tag: 0)
    let tab2 = ESTabBarItem(title: "Dịch vụ công",
                            image: UIImage(named: "dvc"),
                            selectedImage: UIImage(named: "dvc"),
                            tag: 1)
    let tab3 = ESTabBarItem(title: "Tra cứu",
                            image: UIImage(named: "haioz"),
                            selectedImage: UIImage(named: "haioz"),
                            tag: 2)
    let tab4 = ESTabBarItem(title: "Trợ giúp",
                            image: UIImage(named: "tt"),
                            selectedImage: UIImage(named: "tt"),
                            tag: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initItem()
        configUI()
        initSideMenu()
        addListenerShowSideMenu()
        addListenerShowTab()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()

            let newTabBarHeight = 40 + 16.0

            var newFrame = tabBar.frame
            newFrame.size.height = newTabBarHeight
            newFrame.origin.y = view.frame.size.height - newTabBarHeight

            tabBar.frame = newFrame
        }
    
    
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        tabBar.frame.size.height = 200
//        tabBar.frame.origin.y = view.frame.height - 200
//    }
    
    private func addListenerShowSideMenu() {
        NotificationCenter.default.addObserver(self, selector: #selector(showSideMenu(_ :)), name: .SHOW_SIDE_MENU, object: nil)
    }
    
    private func addListenerShowTab() {
        NotificationCenter.default.addObserver(self, selector: #selector(showTabNumber(_ :)), name: .SELECT_TAB_BAR, object: nil)
    }
    
    
    private func initSideMenu() {
        
        menu = .init(rootViewController: SideMenuViewController())
        menu?.menuWidth = SCREEN_WIDTH - 100
        menu?.leftSide = true
        menu?.presentationStyle = .menuSlideIn
        menu?.modalPresentationStyle = .overCurrentContext
        menu?.modalTransitionStyle = .crossDissolve

        SideMenuManager.default.leftMenuNavigationController = menu
//        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        SideMenuManager.default.enableSwipeGestures = false
    }
    
    private func configUI() {
        self.tabBar.backgroundColor = .white
        self.tabBar.layer.borderWidth = 1
        self.tabBar.layer.borderColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        self.selectedIndex = 0
    }
    
    
    private func initItem() {
        let searchVC = SearchViewController.instantiate { coder in
            return SearchViewController(coder: coder)
        }
        
        
        let tab1NavigationController = UINavigationController(rootViewController: InforViewController())
        let tab2NavigationController = UINavigationController(rootViewController: ServiceViewController())
        let tab3NavigationController = UINavigationController(rootViewController: searchVC)
        let tab4NavigationController = UINavigationController(rootViewController: HelpViewController())
        
        tab1NavigationController.tabBarItem = tab1
        tab2NavigationController.tabBarItem = tab2
        tab3NavigationController.tabBarItem = tab3
        tab4NavigationController.tabBarItem = tab4
        
        tab1NavigationController.interactivePopGestureRecognizer?.isEnabled = true
        
        self.viewControllers = [
            tab1NavigationController,
            tab2NavigationController,
            tab3NavigationController,
            tab4NavigationController
        ]
        
    }
    
    deinit {
        
    }
    
}

extension TabbarViewController {
    @objc func showSideMenu (_ notification: Notification) {
        present(menu!, animated: true)
    }
    
    @objc func showTabNumber (_ notification: Notification) {
        let data = notification.userInfo as? [String: Any] ?? [:]
        selectedIndex = data["tab"] as? Int ?? 0
        
        dismiss(animated: true)
        
    }
}

extension Notification.Name {
    static let SHOW_SIDE_MENU = Notification.Name("SHOW_SIDE_MENU")
    static let SELECT_TAB_BAR = Notification.Name("SELECT_TAB_BAR")
}

