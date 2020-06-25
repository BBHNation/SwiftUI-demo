//
//  ContentView.swift
//  SwiftUI-demo
//
//  Created by Hancock on 2020/6/6.
//  Copyright © 2020 hancock. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Hello, World!")
                    .fontWeight(.heavy)
                    .foregroundColor(.green)
                    .font(.title)
                    .bold()
                    .underline()
                HStack {
                    Text("Placeholder")
                    Spacer()
                    Text("Good Point")
                }
            }.padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
