//
//  OnboardingCoordinator.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class OnboardingCoordinator: Coordinating {
    var navigationController: UINavigationController
    var childControllers = [Coordinating]()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = OnboardingLandingViewController.instantiate(name: "Onboarding")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
        navigationController.navigationBar.topItem?.title = "Onboarding"
    }
    
    func navigate(from: UIViewController, payload: [String: Any]? = [:]) {
        if let _ = from as? OnboardingLandingViewController {
            let vc = OnboardingInformationViewController.instantiate(name: "Onboarding")
            vc.coordinator = self
            navigationController.pushViewController(vc, animated: true)
        } else if let _ = from as? OnboardingInformationViewController {
            let vc = OnboardingActivationCodeViewController.instantiate(name: "Onboarding")
            vc.coordinator = self
            navigationController.pushViewController(vc, animated: true)
        } else if let _ = from as? OnboardingActivationCodeViewController {
            let vc = HomeViewController.instantiate()
            
            vc.coordinator = self
            vc.activationCode = payload?["code"] as? String
            navigationController.setViewControllers([vc], animated: true)
        } else {
            assertionFailure("")
        }
    }
}
