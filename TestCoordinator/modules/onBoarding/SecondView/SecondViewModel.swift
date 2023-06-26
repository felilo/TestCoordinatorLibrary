//
//  SecondViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation

class SecondViewModel: ObservableObject {
    
    private let coordinator: OnboardingCoordinator
    
    
    init(coordinator: OnboardingCoordinator) {
        self.coordinator = coordinator
    }
    
    
    func goHome() {
        coordinator.showHomeCoordinator()
    }
}
