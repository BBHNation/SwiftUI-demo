//
//  CircleImage.swift
//  SwiftUI-demo
//
//  Created by Hancock on 2020/6/25.
//  Copyright © 2020 hancock. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("desk")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 4.0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
