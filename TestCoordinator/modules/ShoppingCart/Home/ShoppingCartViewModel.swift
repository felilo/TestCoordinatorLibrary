//
//  UserSettingsViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import Foundation
import ALCoordinator


class ShoppingCartViewModel: ObservableObject {
    
    private let coordinator: ShoppingCartCoordinator
    
    
    init(coordinator: ShoppingCartCoordinator) {
        self.coordinator = coordinator
    }
    
    
    func finish() {
        coordinator.showCheckout()
    }
}
