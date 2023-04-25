//
//  TabBarController.swift
//  Navigation
//
//  Created by ANTQN on 25.04.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    var feedTabNavigationController : UINavigationController!
    var profileTabNavigationControoller : UINavigationController!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Methods
    
    private func setupUI() {
        feedTabNavigationController = UINavigationController.init(rootViewController: FeedViewController())
        profileTabNavigationControoller = UINavigationController.init(rootViewController: ProfileViewController())
        
        self.viewControllers = [feedTabNavigationController, profileTabNavigationControoller]
        
        let item1 = UITabBarItem(title: "Feed",
                                 image: UIImage(systemName: "house.fill"), tag: 0)
        
        let item2 = UITabBarItem(title: "Profile",
                                 image:  UIImage(systemName: "person.fill"), tag: 1)
        
        feedTabNavigationController.tabBarItem = item1
        profileTabNavigationControoller.tabBarItem = item2
        
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }
    
}

// MARK: - Extension

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
