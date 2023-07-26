//
//  HomeCoordinatorUIKit.swift
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

class HomeCoordinatorUIKit: TabbarCoordinator<HomeRouter> {

  
  // ---------------------------------------------------------------------
  // MARK: Constructor
  // ---------------------------------------------------------------------
  

  public init() {
    super.init(
      pages: PAGE.itemsSorted,
      presentationStyle: .fullScreen
    )
    setupStyleTabbar()
  }

  
  // ---------------------------------------------------------------------
  // MARK: Helper funcs
  // ---------------------------------------------------------------------
  

  private func setupStyleTabbar() {
    let appearance = UITabBarAppearance()
    appearance.backgroundColor = .yellow
    setTabBarItemColors(appearance.stackedLayoutAppearance)
    setTabBarItemColors(appearance.inlineLayoutAppearance)
    setTabBarItemColors(appearance.compactInlineLayoutAppearance)
    tabController.tabBar.standardAppearance = appearance
    UITabBar.appearance().scrollEdgeAppearance = appearance
    UITabBar.appearance().isHidden = false
  }
  
  private func setTabBarItemColors(_ itemAppearance: UITabBarItemAppearance) {
    itemAppearance.normal.iconColor = .gray
    itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
    itemAppearance.selected.iconColor = .red
    itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
  }
}
