//
//  SplashScreenViewModel.swift
//  Setaraaaaa
//
//  Created by bernardus kanayari on 23/08/23.
//

import Foundation
import SwiftUI

class SplashScreenViewModel: ObservableObject {
    @AppStorage("isOnboarding") var isOnboarding = true
    @Published var isActive: Bool = false

    func showSplashScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation {
                self.isActive = true
            }
        }
    }
}
