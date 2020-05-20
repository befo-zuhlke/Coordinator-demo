//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinating {
    
    var navigationController: UINavigationController
    var childControllers = [Coordinating]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let code = UserDefaults.standard.object(forKey: "activation code") as? String else {
            let onboarding = OnboardingCoordinator(navigationController: navigationController)
            onboarding.start()
            childControllers.append(onboarding)
            return
        }
        
        let home = HomeCoordinator(navigationController: navigationController, code: code)
        home.start()
        
    }
    
    func navigate(from: UIViewController, payload: [String : Any]?) {
        
    }
}
