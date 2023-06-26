//
//  UserSettingsView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import SwiftUI

struct ShoppingCartView: View {
    
    @StateObject var viewModel: ShoppingCartViewModel
    
    
    init(viewModel: ShoppingCartViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    
    var body: some View {
        VStack {
            Text("Hello, ShoppingCartView!")
            Button("Show checkout") {
                viewModel.finish()
            }
        }
        
    }
}
