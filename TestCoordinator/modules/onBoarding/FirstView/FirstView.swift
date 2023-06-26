//
//  FirstView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import SwiftUI

struct FirstView: View {
    
    @StateObject var viewModel: FirstViewModel
    
    init(viewModel: FirstViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Text("Hello, First View!")
            Button("go second view!") {
                viewModel.goSecondStep()
            }
        }
    }
}
