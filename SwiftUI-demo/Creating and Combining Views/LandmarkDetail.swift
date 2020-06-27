//
//  ContentView.swift
//  SwiftUI-demo
//
//  Created by Hancock on 2020/6/6.
//  Copyright © 2020 hancock. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .fontWeight(.heavy)
                    .foregroundColor(.green)
                    .font(.title)
                    .bold()
                    .underline()
                HStack {
                    Text(landmark.state)
                    Spacer()
                    Text(landmark.park)
                        .font(.footnote)
                }
            }.padding(30)
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[7])
    }
}
