//
//  FoodTrackerApp.swift
//  FoodTracker
//
//  Created by Jose M. Torres on 2021/03/03.
//

import SwiftUI

@main
struct FoodTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(location: Locations().primary)
        }
        }
    }
}
