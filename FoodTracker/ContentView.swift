//
//  ContentView.swift
//  FoodTracker
//
//  Created by Jose M. Torres on 2021/03/03.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
            
            Text(location.name)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            Text(location.country)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.secondary)
            Text(location.more)
            .padding()
            
        Text("Did you know?")
            .bold()
        
            Text(location.advisory)
            .padding()
    }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location :
                            Locations().primary)
    }
    }
}
