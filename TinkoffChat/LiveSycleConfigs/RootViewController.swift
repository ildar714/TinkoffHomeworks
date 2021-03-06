//
//  RootViewController.swift
//  TinkoffChat
//
//  Created by Ildar on 10/7/20.
//  Copyright © 2020 Tinkoff. All rights reserved.
//

import UIKit

class RootViewController {
    static var rootAssembly = RootAssembly()
    static var navigationController: UINavigationController = UINavigationController()
    static func createRootViewController(window: UIWindow?) {
        if let conversationsListViewController = self.rootAssembly.presentationAssembly.converstationsListViewController() {
            let storyboard: UIStoryboard = UIStoryboard(name: "ConversationsListViewController", bundle: nil)
            if let navigationController = storyboard.instantiateInitialViewController() as? UINavigationController {
                navigationController.viewControllers = [conversationsListViewController]
                window?.rootViewController = navigationController
                window?.makeKeyAndVisible()
            }
        }
    }
}
