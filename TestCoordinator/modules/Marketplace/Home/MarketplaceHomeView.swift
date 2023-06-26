//
//  MarketplaceHomeView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import SwiftUI

struct MarketplaceHomeView: View {
    
    @StateObject var viewModel: MarketplaceViewModel


    init(viewModel: MarketplaceViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Text("Hello, marketplace!")
            Button("Show shopping cart") {
                viewModel.showShoppingCart()
            }
        }
        
    }
}
