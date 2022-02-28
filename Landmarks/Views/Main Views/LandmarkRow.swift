//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Amine Ben Jemia on 2/11/22.
//

import SwiftUI

struct LandmarkRow: View {
    
    @EnvironmentObject var model: ModelData
    
    var landmark: Landmark
    
    var myIndex:Int {
        model.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        HStack {
            
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
//            if landmark.isFavorite {
//                Image(systemName: "star.fill")
//                    .foregroundColor(.yellow)
//            }
            
            Button {
                model.landmarks[myIndex].isFavorite.toggle()
            } label: {
                Image(systemName: "star.fill")
                    .labelStyle(.iconOnly)
                    .foregroundColor(model.landmarks[myIndex].isFavorite ? .yellow : .gray)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        let landmarks = ModelData().landmarks
        
        LandmarkRow(landmark: landmarks[0])
            .environmentObject(ModelData())
    }
}
