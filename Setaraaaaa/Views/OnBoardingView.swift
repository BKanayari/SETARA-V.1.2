//
//  ViewDuaView.swift
//  Setaraaaaa
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 31/03/23.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var currentPage = 0
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        if isOnboarding ?? true {
            VStack {
                ImageCarouselView(currentPage: $currentPage)

                VStack(spacing: 10) {
                    Text("Help you to split bill with your friend")
                        .fontWeight(.medium)

                    PageIndicatorView(currentPage: $currentPage)

                    Text("Sometimes Split bill is challenging if you don't know how to do it. Here we give you some how to do it fairly")
                        .frame(alignment: Alignment.trailing)
                        .fixedSize(horizontal: false, vertical: true)

                    TabView(selection: $currentPage) {
                        ForEach(0..<3) {pageIndex in
                            if pageIndex != 2 {
                                PrimaryButton(title: "Next") {
                                    currentPage += 1
                                }
                            } else {
                                PrimaryButton(title: "Get Started") {
                                    self.isOnboarding = false
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        } else {
            HomeView()
        }
    }
}
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
