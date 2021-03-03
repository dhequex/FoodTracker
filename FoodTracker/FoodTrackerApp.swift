//
//  FoodTrackerApp.swift
//  FoodTracker
//
//  Created by Jose M. Torres on 2021/03/03.
//

import SwiftUI

@main
struct FoodTrackerApp: App {
    
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                ContentView(location: locations.primary)
        }
            .tabItem {
                Image(systemName: "graduationcap.fill")
                Text("Learn more")
            }
                NavigationView{
                    Worldview()
                }
                .tabItem { Image(systemName: "star.fill")
                Text("Locations")
                }
        }
            .environmentObject(locations)
    }
}
}
