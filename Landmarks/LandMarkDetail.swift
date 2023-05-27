//
//  LandMarkDetail.swift
//  Landmarks
//
//  Created by markmota on 20/10/22.
//

import SwiftUI
import CoreLocation

struct LandMarkDetail: View {
    var landMark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landMark.locationCoordinate)
                .ignoresSafeArea()
            CircleImage(image: landMark.image)
                .offset(y: -160)
                .padding(.bottom, -160)
                
            VStack (alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                HStack {
                    Text(landMark.park)
                        
                    Spacer()
                    Text(landMark.state)
                       
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text ("About \(landMark.name)")
                    .font(.title2)
                Text (landMark.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landMark: landmarks[0])
            
    }
}
