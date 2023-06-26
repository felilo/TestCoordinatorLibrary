//
//  OnboardingCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator
import SwiftUI

enum OnboardingRouter: NavigationRouter {
    
    case firstStep(viewModel: FirstViewModel)
    case secondStep(viewModel: SecondViewModel)
    
    // MARK: NavigationRouter
    var transition: NavigationTransitionStyle {
        switch self {
            case .firstStep, .secondStep:
                return .push
        }
    }
    
    func view() -> any View {
        switch self {
            case .firstStep(let vm):
                return FirstView(viewModel: vm)
            case .secondStep(let vm):
                return SecondView(viewModel: vm)
        }
    }
}
