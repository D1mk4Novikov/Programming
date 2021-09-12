//
//  MainTabBarController.swift
//  Contacts
//
//  Created by Dimka Novikov on 13.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contactsVC = ContactsViewController()
        let recentVC = RecentViewController()
        
        let contactsImage = UIImage(systemName: "person.crop.circle")!
        let recentImage = UIImage(systemName: "clock.fill")!
        
        
        viewControllers = [
            generateNavigationController(rootViewController: contactsVC, title: "Contacts", image: contactsImage),
            generateNavigationController(rootViewController: recentVC, title: "Recent", image: recentImage)
        ]
        
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
    
}
