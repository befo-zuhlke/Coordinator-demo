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
    
    func goToInfoPage() {
        let vc = OnboardingInformationViewController.instantiate(name: "Onboarding")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToCodePage() {
        let vc = OnboardingActivationCodeViewController.instantiate(name: "Onboarding")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToHome(code: String) {
        let vc = HomeViewController.instantiate()
        vc.coordinator = self
        vc.activationCode = code
        navigationController.setViewControllers([vc], animated: true)
    }
}
