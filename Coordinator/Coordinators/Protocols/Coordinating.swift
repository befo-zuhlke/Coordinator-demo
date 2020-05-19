//
//  Coordinating.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import UIKit

protocol Coordinating: AnyObject {
    var navigationController: UINavigationController { get set }
    var childControllers: [Coordinating] { get set }
    
    func start()
    func remove(_ coordinator: Coordinating)
}

extension Coordinating {
    func remove(_ coordinator: Coordinating) {
        childControllers = childControllers.filter { $0 !== coordinator }
    }
}
