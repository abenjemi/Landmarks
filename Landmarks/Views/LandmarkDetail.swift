//
//  LanmarkDetail.swift
//  Landmarks
//
//  Created by Amine Ben Jemia on 2/11/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            
            MapView(coordinate:  landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .padding(.bottom, -130)
                .offset(y: -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)


                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)

                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")

                Text(landmark.description)

            }
            .padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[1])
    }
}
