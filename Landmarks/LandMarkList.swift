//
//  LandMarkList.swift
//  Landmarks
//
//  Created by markmota on 18/11/22.
//
import SwiftUI


struct LandMarkList: View {
   
    var body: some View {
        NavigationView{
            List(landmarks) { landMark in
                NavigationLink{
                    LandMarkDetail(landMark: landMark)
                } label: {
                    LandmarkRow(landmark: landMark)
                }
            }
        }
        
       
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
