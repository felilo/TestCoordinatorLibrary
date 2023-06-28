//
//  MarketplaceRouter.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator
import SwiftUI

enum SettingsRouter: NavigationRouter {
    
    case home(viewModel: SettingsHomeViewModel)
    
    // MARK: NavigationRouter
    var transition: NavigationTransitionStyle {
        switch self {
            case .home:
                return .push
        }
    }
    
    func view() -> any View {
        switch self {
            case .home(let vm):
                return SettingsHomeView(viewModel: vm)
        }
    }
}
