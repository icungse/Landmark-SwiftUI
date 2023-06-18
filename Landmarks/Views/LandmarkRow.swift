//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Icung on 18/06/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var modelData = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmark: modelData[0])
            LandmarkRow(landmark: modelData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
