//
//  swiftUILearningApp.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/11.
//

import SwiftUI

@main
struct swiftUILearningApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        } //Preview Assets.xcassets
    }
}
