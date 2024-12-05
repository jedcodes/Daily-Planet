//
//  ContentView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplash: Bool = true
    var body: some View {
        ZStack {
            if showSplash {
                SplashScreenView()
                    
            } else {
                MainScreenView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.showSplash = false
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
