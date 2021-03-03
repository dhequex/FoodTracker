//
//  Worldview.swift
//  FoodTracker
//
//  Created by Jose M. Torres on 2021/03/04.
//
import MapKit
import SwiftUI

struct Worldview: View {
    @EnvironmentObject  var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude:36.6982, longitude: 137.8619),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places){
            location in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude:location.latitude, longitude: location.longitude)){
                NavigationLink(
                    destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width:60, height: 40)
                        .shadow(radius:3)
                }
            }
        }
            .navigationTitle("Locations")
    }
}

struct Worldview_Previews: PreviewProvider {
    static var previews: some View {
        Worldview()
    }
}
