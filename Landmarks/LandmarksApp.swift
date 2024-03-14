//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Naussica Yu on 2023/09/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
