//
//  UserSettingsViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import Foundation


class MarketplaceViewModel: ObservableObject {
    
    private let coordinator: MarketplaceCoordinator
    
    
    init(coordinator: MarketplaceCoordinator) {
        self.coordinator = coordinator
    }
    
    
    func showShoppingCart() {
        coordinator.showShoppingCart()
    }
}
