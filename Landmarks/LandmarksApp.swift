//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Amine Ben Jemia on 2/7/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                
                ContentView()
                    .environmentObject(modelData)
                
                
            }
        }
    }
}
