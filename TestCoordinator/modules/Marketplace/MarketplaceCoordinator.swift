//
//  MarketplaceCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator

class MarketplaceCoordinator: CoordinatorSUI<MarketplaceRouter> {
    
    override func start(animated: Bool = true) {
        parent.startChildCoordinator(self)
        show(.home(viewModel: .init(coordinator: self)))
    }
    
    
    func showShoppingCart() {
        let coordinator = ShoppingCartCoordinator(parent: self)
        coordinator.start()
    }
    
}
