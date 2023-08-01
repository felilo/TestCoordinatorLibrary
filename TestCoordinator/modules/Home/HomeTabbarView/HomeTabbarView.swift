//
//  HomeTabbarView.swift
//
//  Copyright (c) Andres F. Lozano
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import SwiftUI

struct HomeTabbarView: View {
  
  
  typealias Page = HomeRoute2
  @StateObject private var viewModel: HomeTabbarViewModel
  
  
  init(viewModel: HomeTabbarViewModel) {
    self._viewModel = .init(wrappedValue: viewModel)
  }
  
  let widthIcon: CGFloat = 22
  
  var body: some View {
    ZStack(alignment: .bottomLeading) {
      VStack(spacing: 8) {
        Color.gray.opacity(0.6)
          .frame(height: 0.3)
        customTabbar()
      }.background(
        .ultraThinMaterial,
        in: RoundedRectangle(cornerRadius: 0, style: .continuous)
      ).frame(maxWidth: .infinity, maxHeight: 80)
    }.ignoresSafeArea(.all)
  }
  
  
  private func tabbarButton(@State page: Page, size: CGRect) -> some View {
    Button {
      viewModel.setCurrentPage(page)
    } label: {
      ZStack(alignment: .bottom) {
        VStack(alignment: .center , spacing: 2) {
          page.icon
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
