//
//  HomeCoordinator.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinating {
    var navigationController: UINavigationController
    var childControllers = [Coordinating]()
    
    var activationCode: String
    
    init(navigationController: UINavigationController, code: String) {
        self.navigationController = navigationController
        activationCode = code
    }
    
    func start() {
        let vc = HomeViewController.instantiate()
        vc.coordinator = self
        vc.activationCode = activationCode
        navigationController.pushViewController(vc, animated: false)
        navigationController.navigationBar.topItem?.title = "Home"
    }
    
    func navigate(from: UIViewController, payload: [String : Any]?) {
        
    }
}
