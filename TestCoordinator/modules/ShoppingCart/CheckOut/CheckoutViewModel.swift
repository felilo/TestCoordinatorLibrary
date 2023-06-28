//
//  UserSettingsViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import Foundation


class CheckoutViewModel: ObservableObject {
    
    private let coordinator: ShoppingCartCoordinator
    
    
    init(coordinator: ShoppingCartCoordinator) {
        self.coordinator = coordinator
    }
    
    
    func finish() {
        coordinator.finish(completion: nil)
    }
}
