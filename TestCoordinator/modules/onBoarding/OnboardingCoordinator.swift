//
//  OnboardingCoordinator.swift
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

class OnboardingCoordinator: NavigationCoordinator<OnboardingRoute> {
  
  
  // ---------------------------------------------------------------------
  // MARK: Coordinator
  // ---------------------------------------------------------------------
  
  
  override func start(animated: Bool) {
    let vm = FirstViewModel(coordinator: self)
    router.startFlow(
      route: .firstStep(viewModel: vm),
      animated: animated
    )
  }
  
  
  // ---------------------------------------------------------------------
  // MARK: Helper funcs
  // ---------------------------------------------------------------------
  
  
  func showStep2() {
    let vm = SecondViewModel(coordinator: self)
    router.navigate(to: .secondStep(viewModel: vm))
  }
  
  func showHomeCoordinator() {
    let coordinator = HomeCoordinatorSUI(currentPage: .settings)
    router.navigate(to: coordinator)
  }
}
