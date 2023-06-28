//
//  MarketplaceRouter.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator
import SwiftUI

enum ShoppingCartRouter: NavigationRouter {
    
    case home(vm: ShoppingCartViewModel)
    case checkout(vm: CheckoutViewModel)
    
    // MARK: NavigationRouter
    var transition: NavigationTransitionStyle {
        switch self {
            default: return .push
                
        }
    }
    
    func view() -> any View {
        switch self {
            case .home(let vm):
                return ShoppingCartView(viewModel: vm)
            case .checkout(let vm):
                return CheckoutView(viewModel: vm)
        }
    }
}
