//
//  PrimaryButton.swift
//  Setaraaaaa
//
//  Created by bernardus kanayari on 23/08/23.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .font(.system(.title2, design: .rounded))
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(Color("BasicYellow"))
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.top, 70)
                .frame(height: 200)
        }
    }
}

struct PrimaryButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .font(.system(.title2, design: .rounded))
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color("BasicYellow"))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding(.top, 70)
            .frame(height: 200)
    }
}

extension View {
    func withPrimaryButtonFormat() -> some View {
        modifier(PrimaryButtonViewModifier())
    }
}
