//
//  ImageCarouselView.swift
//  Setaraaaaa
//
//  Created by bernardus kanayari on 24/08/23.
//

import SwiftUI

struct ImageCarouselView: View {
    @Binding var currentPage: Int
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(0..<3) { pageIndex in
                Image("welcomescreen\(pageIndex + 1)")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 353, height: 353)
            }
        }
    }
}
