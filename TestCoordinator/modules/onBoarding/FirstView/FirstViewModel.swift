//
//  FirstViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation

class FirstViewModel: ObservableObject {
    
    private let coordinator: OnboardingCoordinator
    
    
    init(coordinator: OnboardingCoordinator) {
        self.coordinator = coordinator
    }
    
    
    func goSecondStep() {
        coordinator.showStep2()
    }
    
}
