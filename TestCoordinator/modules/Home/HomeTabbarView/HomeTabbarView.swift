//
//  HomeTabbarView.swift
//  TestCoordinator
//
//  Created by Andres Lozano on 23/06/23.
//

import SwiftUI

struct HomeTabbarView: View {
    
    
    typealias Page = HomeRouter
    @StateObject private var viewModel: HomeTabbarViewModel
    
    
    init(viewModel: HomeTabbarViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
        UITabBar.appearance().isHidden = true
    }
    
    let widthIcon: CGFloat = 30
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VStack(spacing: 8) {
                Color.gray.opacity(0.6)
                    .frame(height: 0.3)
                customTabbar()
            }.background(
                .ultraThinMaterial,
                in: RoundedRectangle(cornerRadius: 0, style: .continuous)
            ).frame(maxWidth: .infinity, maxHeight: 83)
        }.ignoresSafeArea(.all)
    }
    
    
    private func tabbarButton(@State page: Page, size: CGRect) -> some View {
        Button {
            viewModel.currentPage = page
        } label: {
            ZStack(alignment: .bottom) {
                VStack(alignment: .center , spacing: 2) {
                    Image(systemName: page.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: widthIcon, height: widthIcon)
                        .clipped()
                    Text(page.title)
                        .font(.system(size: 11))
                    
                }.foregroundColor(viewModel.currentPage == page ? .blue : .black)
            }
        }.frame(width: getWidthButton(with: size))
    }
    
    
    func customTabbar() -> some View {
        GeometryReader { proxy in
            HStack(spacing: 0) {
                ForEach(viewModel.pages, id: \.self) {
                    tabbarButton(
                        page: $0,
                        size: proxy.frame(in: .global)
                    )
                }
            }
        }
    }
    
    
    private func getWidthButton(with size: CGRect) -> CGFloat {
        size.width / CGFloat(viewModel.pages.count)
    }
}

struct HomeTabbar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabbarView(viewModel: .init())
    }
}
