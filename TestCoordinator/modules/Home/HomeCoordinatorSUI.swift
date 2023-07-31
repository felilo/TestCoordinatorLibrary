//
//  HomeCoordinatorSUI.swift
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
import Combine

class HomeCoordinatorSUI: TabbarCoordinator<HomeRoute> {
  
  
  // ---------------------------------------------------------------------
  // MARK: Properties
  // ---------------------------------------------------------------------
  
  
  var cancelables = Set<AnyCancellable>()
  
  
  // ---------------------------------------------------------------------
  // MARK: Constructor
  // ---------------------------------------------------------------------
  
  
  public init(currentPage: PAGE = .marketplace) {
    // Custom Tabbar view
    let viewModel = HomeTabbarViewModel()
    let view = HomeTabbarView(viewModel: viewModel)
    viewModel.currentPage = currentPage
    
    super.init(
      customView: view,
      pages: PAGE.itemsSorted,
      currentPage: currentPage,
      presentationStyle: .fullScreen
    )
    
    viewModel.$currentPage
      .sink { [weak self] page in
        self?.currentPage = page
      }.store(in: &cancelables)
    
    setup()
  }
  
  public init(default: Bool ) {
    // Default Tabbar view
    super.init(pages: PAGE.itemsSorted)
  }
  
  
  // ---------------------------------------------------------------------
  // MARK: Helper funcs
  // ---------------------------------------------------------------------
  
  
  func setup() {
    UITabBar.appearance().isHidden = true
  }
}
