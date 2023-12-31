//
//  HomeRoute2.swift
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

import SwiftUI
import SUICoordinator

enum HomeRouteSUI: CaseIterable, TabbarPage {
  
  case marketplace
  case settings
  
  
  // ---------------------------------------------------------------------
  // MARK: NavigationRouter
  // ---------------------------------------------------------------------
  
  
  func coordinator() -> Coordinator {
    switch self {
      case .settings:
        return SettingsCoordinator()
      case .marketplace:
        return MarketplaceCoordinator()
    }
  }
  
  
  // ---------------------------------------------------------------------
  // MARK: TabbarPageDataSource
  // ---------------------------------------------------------------------
  
  
  public var title: String {
    switch self {
      case .marketplace:
        return "Marketplace"
      case .settings:
        return "Settings"
    }
  }
  
  public var icon: Image {
    switch self {
      case .marketplace:
        return .init(systemName: "house")
      case .settings:
        return .init(systemName: "gearshape")
    }
  }
  
  public var position: Int {
    switch self {
      case .marketplace:
        return 0
      case .settings:
        return 1
    }
  }
}

