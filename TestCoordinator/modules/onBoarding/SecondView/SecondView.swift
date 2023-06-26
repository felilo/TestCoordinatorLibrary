//
//  SecondView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import SwiftUI


struct SecondView: View {
    
    @StateObject var viewModel: SecondViewModel
    
    
    init(viewModel: SecondViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Text("Hello, Second View!")
            Button("Go home!") {
                viewModel.goHome()
            }
        }
    }
}
