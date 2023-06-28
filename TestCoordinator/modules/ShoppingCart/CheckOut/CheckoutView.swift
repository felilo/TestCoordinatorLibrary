//
//  UserSettingsView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 26/06/23.
//

import SwiftUI

struct CheckoutView: View {
    
    @StateObject var viewModel: CheckoutViewModel
    
    
    init(viewModel: CheckoutViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    
    var body: some View {
        VStack {
            Text("Hello, Checkout view!")
            Button("Finish coordinator") {
                viewModel.finish()
            }
        }
        
    }
}
