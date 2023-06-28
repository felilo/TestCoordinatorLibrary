//
//  UserSettingsViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import Foundation


class SettingsHomeViewModel: ObservableObject {
    
    private let coordinator: SettingsCoordinator
    
    
    init(coordinator: SettingsCoordinator) {
        self.coordinator = coordinator
    }
    
    
    func finish() {
        coordinator.finish(completion: nil)
    }
    
    func restartApp() {
        coordinator.restartApp()
    }
}
