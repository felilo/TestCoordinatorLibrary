//
//  OnboardingCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator

class OnboardingCoordinator: CoordinatorSUI<OnboardingRouter> {
    
    
    override init(parent: Coordinator?) {
        super.init(parent: parent, presentationStyle: .fullScreen)
    }
    
    
    override func start(animated: Bool) {
        let vm = FirstViewModel(coordinator: self)
        parent.startChildCoordinator(self, animated: animated)
        show(.firstStep(viewModel: vm))
    }
    
    func showStep2() {
        let vm = SecondViewModel(coordinator: self)
        show(.secondStep(viewModel: vm))
    }
    
    func showHomeCoordinator() {
        let coordinator = HomeCoordinator(parent: self)
        coordinator.start()
    }
}
