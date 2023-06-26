//
//  HomeCoordinator.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import Foundation
import ALCoordinator
import Combine
import UIKit

class HomeCoordinator: TabbarCoordinator<HomeRouter> {
    
    var cancelables = Set<AnyCancellable>()
    
    // Custom Tabbar view
    public init(withParent parent: Coordinator) {
        let viewModel = HomeTabbarViewModel()
        let view = HomeTabbarView(viewModel: viewModel)
        super.init(parent: parent, customView: view, pages: HomeRouter.itemsSorted)
        viewModel.$currentPage
            .sink { [weak self] page in
                self?.currentPage = page
            }.store(in: &cancelables)
    }
    
    
    // Default tabbar view
    public init(parent: Coordinator) {
        super.init(parent: parent, pages: PAGE.itemsSorted)
        setupStyleTabbar()
    }
    
    func setupStyleTabbar() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .yellow
        setTabBarItemColors(appearance.stackedLayoutAppearance)
        setTabBarItemColors(appearance.inlineLayoutAppearance)
        setTabBarItemColors(appearance.compactInlineLayoutAppearance)
        tabController.tabBar.standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    private func setTabBarItemColors(_ itemAppearance: UITabBarItemAppearance) {
        itemAppearance.normal.iconColor = .gray
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
        itemAppearance.selected.iconColor = .red
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
    }
    
}
