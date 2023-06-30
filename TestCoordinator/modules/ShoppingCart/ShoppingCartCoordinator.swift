//
//  ShoppingCartCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import Foundation
import ALCoordinator

class ShoppingCartCoordinator: CoordinatorSUI<ShoppingCartRouter> {
    
    override func start(animated: Bool = true) {
        presentCoordinator(animated: animated)
        show(.home(vm: .init(coordinator: self)))
    }
    
    
    func showCheckout() {
        show(.checkout(vm: .init(coordinator: self)))
    }
}
