//
//  OnboardingLandingViewController.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class OnboardingLandingViewController: UIViewController, Storyboarded, Coordinatable {
    typealias Coordinator = OnboardingCoordinator
    var coordinator: OnboardingCoordinator?
    
    @IBAction func onNextTapped(_ sender: Any) {
        coordinator?.goToInfoPage()
    }
    
}
