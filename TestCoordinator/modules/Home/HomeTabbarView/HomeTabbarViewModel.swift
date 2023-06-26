//
//  HomeTabbarViewModel.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 23/06/23.
//

import Foundation

class HomeTabbarViewModel: ObservableObject {
    
    @Published var currentPage =  HomeRouter.marketplace
    let pages = HomeRouter.itemsSorted
    
}
