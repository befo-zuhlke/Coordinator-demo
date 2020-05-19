//
//  OnboardingActivationCodeViewController.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class OnboardingActivationCodeViewController: UIViewController, Storyboarded, Coordinatable {
    typealias Coordinator = OnboardingCoordinator
    var coordinator: OnboardingCoordinator?
    @IBOutlet weak var activationCodeTextField: UITextField!
    
    @IBAction func onGoTapped(_ sender: Any) {
        UserDefaults.standard.set(activationCodeTextField.text, forKey: "activation code")
        coordinator?.goToHome(code: activationCodeTextField.text ?? "Wrong code")
    }
}

