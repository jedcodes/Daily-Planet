//
//  MainScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        TabView {
            ArticleScreenView()
                .tabItem {
                    Label("My Articles", systemImage: "list.bullet.rectangle")
                }
            SearchScreenView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            SettingScreenView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    MainScreenView()
}
