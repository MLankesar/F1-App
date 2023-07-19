//
//  F1App.swift
//  F1
//
//  Created by Michaela Lankesaar on 2023/07/11.
//

import SwiftUI


@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
