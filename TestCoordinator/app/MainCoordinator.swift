//
//  MainCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import ALCoordinator
import SwiftUI

class MainCoordinator: BaseCoordinator {
    
    init() {
        super.init(parent: nil)
        let ctrl = UIHostingController.init(rootView: SplashScreenView())
        root.pushViewController(ctrl, animated: false)
    }
    
    override func start(animated: Bool = false) {
        let coordinator = OnboardingCoordinator(parent: self)
        coordinator.start(animated: animated)
    }
}
