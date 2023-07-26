//
//  ShoppingCartCoordinator.swift
//
//  Copyright (c) Andres F. Lozano
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import SUICoordinator
import SwiftUI

class ShoppingCartCoordinator: NavigationCoordinatable<ShoppingCartCoordinator.ShoppingCartRouter> {
  
  // ---------------------------------------------------------------------
  // MARK: Coordinator
  // ---------------------------------------------------------------------
  

  override func start(animated: Bool = true) {
    router.startFlow(
      route: .home(vm: .init(coordinator: self)),
      animated: animated
    )
  }
  
  
  // ---------------------------------------------------------------------
  // MARK: Helper funcs
  // ---------------------------------------------------------------------
  
  
  func showCheckout() {
    router.navigate(to: .checkout(vm: .init(coordinator: self)))
  }
  
  
  func finish() {
    router.finishFlow(animated: true, completion: nil)
  }
  
  
  func showHomeCoordinatorUIK() {
    router.navigate(to: HomeCoordinatorUIKit())
  }
}



extension ShoppingCartCoordinator {
  
  // ---------------------------------------------------------------------
  // MARK: Enums
  // ---------------------------------------------------------------------
  

  enum ShoppingCartRouter: NavigationRoute {
    
    case home(vm: ShoppingCartViewModel)
    case checkout(vm: CheckoutViewModel)
    
    
    // ---------------------------------------------------------------------
    // MARK: NavigationRouter
    // ---------------------------------------------------------------------
    
    
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
}
