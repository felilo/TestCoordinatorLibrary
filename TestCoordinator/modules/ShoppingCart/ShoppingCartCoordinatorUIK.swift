//
//  ShoppingCartCoordinator2.swift
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

import UIKCoordinator
import UIKit

class ShoppingCartCoordinatorUIK: NavigationCoordinator<ShoppingCartCoordinatorUIK.ShoppingCartRoute> {
  
  
  // ---------------------------------------------------------------------
  // MARK: Coordinator
  // ---------------------------------------------------------------------
  

  override func start(animated: Bool = true) {
    router.startFlow(route: .home)
  }
  
  
  // ---------------------------------------------------------------------
  // MARK: Helper funcs
  // ---------------------------------------------------------------------
  
  
  func showCheckout() {
    router.navigate(to: .checkout)
  }
  
  
  func finish() {
    router.finishFlow(completion: nil)
  }
}



extension ShoppingCartCoordinatorUIK {
  
  // ---------------------------------------------------------------------
  // MARK: Enums
  // ---------------------------------------------------------------------
  
  
  enum ShoppingCartRoute: NavigationRoute {
    
    case home
    case checkout
    
    
    // ---------------------------------------------------------------------
    // MARK: NavigationRouter
    // ---------------------------------------------------------------------
    
    
    var transition: NavigationTransitionStyle { .push }
    
    func view() -> UIViewController {
      switch self {
        case .home:
          let ctrl = UIViewController()
          ctrl.view.backgroundColor = .red
          return ctrl
        case .checkout:
          let ctrl = UIViewController()
          ctrl.view.backgroundColor = .blue
          return ctrl
      }
    }
  }
}
