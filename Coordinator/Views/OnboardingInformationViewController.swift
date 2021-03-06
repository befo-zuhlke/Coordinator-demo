//
//  OnboardingInformationViewController.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class OnboardingInformationViewController: UIViewController, Storyboarded, Coordinatable {
    typealias Coordinator = OnboardingCoordinator
    weak var coordinator: OnboardingCoordinator?
    
    @IBAction func onNextTapped(_ sender: Any) {
        coordinator?.navigate(from: self)
    }
}


