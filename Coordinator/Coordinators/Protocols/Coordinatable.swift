//
//  Coordinatable.swift
//  Coordinator
//
//  Created by Ben Fowler on 19/5/2020.
//  Copyright © 2020 Ben Fowler. All rights reserved.
//

import Foundation

protocol Coordinatable {
    associatedtype Coordinator
    var coordinator: Coordinator? { get set }
}
