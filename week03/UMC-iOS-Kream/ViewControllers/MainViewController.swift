//
//  TabBarController.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 10/6/24.
//

import UIKit

class MainViewController: UITabBarController {

    private let homeVC = HomeViewController()
    private let styleVC = StyleViewController()
    private let shopVC = ShopViewController()
    private let savedVC = SavedViewController()
    private let myPageVC = UINavigationController(rootViewController: MyPageViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeVC.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(named: "icon_home"), tag: 0)
        styleVC.tabBarItem = UITabBarItem(title: "STYLE", image: UIImage(named: "icon_style"), tag: 1)
        shopVC.tabBarItem = UITabBarItem(title: "SHOP", image: UIImage(named: "icon_shop"), tag: 2)
        savedVC.tabBarItem = UITabBarItem(title: "SAVED", image: UIImage(named: "icon_saved"), tag: 3)
        myPageVC.tabBarItem = UITabBarItem(title: "MY", image: UIImage(named: "icon_mypage"), tag: 4)
        
        self.viewControllers = [homeVC, styleVC, shopVC, savedVC, myPageVC]
    }
    
}
