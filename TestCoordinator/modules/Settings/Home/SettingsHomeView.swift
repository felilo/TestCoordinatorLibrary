//
//  MarketplaceHomeView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import SwiftUI

struct SettingsHomeView: View {
    
    @StateObject var viewModel: SettingsHomeViewModel
    
    
    init(viewModel: SettingsHomeViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Hello, Settings!")
            Button("Finish Coordinator") {
                viewModel.finish()
            }
            
            Button("Restart App") {
                viewModel.restartApp()
            }
        }
        
    }
}
