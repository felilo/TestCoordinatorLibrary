//
//  HomeRouter.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator

enum HomeRouter: CaseIterable, TabbarPage {
    
    case marketplace
    case settings
    
    // MARK: NavigationRouter
    
    func coordinator(parent: Coordinator) -> Coordinator {
        switch self {
            case .settings:
                return SettingsCoordinator(parent: parent)
            case .marketplace:
                return MarketplaceCoordinator(parent: parent)
        }
    }
    
    // MARK: TabbarPageDataSource
    
    public var title: String {
        switch self {
            case .marketplace:
                return "Marketplace"
            case .settings:
                return "Settings"
        }
    }
    
    public var icon: String {
        switch self {
            case .marketplace:
                return "house"
            case .settings:
                return "gearshape"
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
    
    static var itemsSorted: [HomeRouter] {
        Self.allCases.sorted(by: { $0.position < $1.position })
    }
}
