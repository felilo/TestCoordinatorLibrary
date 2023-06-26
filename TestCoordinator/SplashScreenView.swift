//
//  SplashScreenView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 22/06/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color.green
            Text("¡Demo coordinator!")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
        }.ignoresSafeArea(.all)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
