//
//  MarketplaceCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator

class SettingsCoordinator: CoordinatorSUI<SettingsRouter> {
    
    override func start(animated: Bool = true) {
        presentCoordinator(animated: animated)
        show(.home(viewModel: .init(coordinator: self)))
    }
    
    
    func restartApp() {
        restartMainCoordinator(animated: true, completion: nil)
    }
}
