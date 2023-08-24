//
//  SplashScreenView.swift
//  Setaraaaaa
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 11/04/23.
//

import SwiftUI

struct SplashScreenView: View {
    @ObservedObject var viewModel = SplashScreenViewModel()
    var body: some View {
        ZStack {
            if self.viewModel.isActive {
                OnBoardingView()
            } else {
                Image("splashScreen")
                    .resizable()
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            viewModel.showSplashScreen()
        }
    }
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
}
