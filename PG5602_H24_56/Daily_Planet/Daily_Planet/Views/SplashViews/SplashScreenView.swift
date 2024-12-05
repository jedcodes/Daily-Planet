//
//  SplashScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color(Theme.BGColor)
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .fill(Theme.subBGColor)
                    .frame(width:300 , height: 300)
                Text("Daily Planet")
                    .font(Font.custom("Poppins-Bold", size: 40))
                    .foregroundStyle(Theme.TextColor)
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
