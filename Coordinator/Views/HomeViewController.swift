//
//  HomeViewController.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded, Coordinatable {
    typealias Coordinator = Coordinating
    weak var coordinator: Coordinator?
    var activationCode: String?
    
    @IBOutlet weak var codeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.codeLabel.text! += " \(activationCode!)"
    }
}

