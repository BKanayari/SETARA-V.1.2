//
//  PageIndicatorView.swift
//  Setaraaaaa
//
//  Created by bernardus kanayari on 24/08/23.
//

import SwiftUI

struct PageIndicatorView: View {
    @Binding var currentPage: Int
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<3) { pageIndex in
                Color("BasicYellow")
                    .opacity(pageIndex == currentPage ? 1 : 0.5)
                    .frame(width: pageIndex == currentPage ? 80 : 47, height: 8)
                    .cornerRadius(10)
            }
            .padding(.trailing, 2)
        }
    }
}
