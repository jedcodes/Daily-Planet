//
//  Daily_PlanetApp.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI
import SwiftData

@main
struct Daily_PlanetApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Article.self, Category.self, Search.self])
    }
}
