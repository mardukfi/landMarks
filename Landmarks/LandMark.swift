//
//  LandMark.swift
//  Landmarks
//
//  Created by markmota on 18/11/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
}


//let landMarks: [Landmark] = [landMark1, landMark2, landMark3]

