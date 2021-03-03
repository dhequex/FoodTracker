//
//  Location.swift
//  FoodTracker
//
//  Created by Jose M. Torres on 2021/03/03.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name : String
    let country : String
    let more : String
    let latitude : Double
    let longitude : Double
    let heroPicture : String
    let advisory : String
    
    static let example = Location(id: 1, name: "Hakuba", country: "Japan", more: "The snowiest place on earth", latitude: 36.6982, longitude: 137.8619, heroPicture: "smokies", advisory: "Cuidado")
}
