//
//  ContentView.swift
//  CreateAPhotoZoomUsingTapGesture
//
//  Created by ramil on 25/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var zoomPhoto = true
    var body: some View {
        ZStack {
            Image("selfie")
                .resizable()
                .aspectRatio(contentMode: zoomPhoto ? .fit : .fill)
                .shadow(radius: 2)
                .rotationEffect(.degrees(zoomPhoto ? 0 : 30), anchor: .bottom)
                .animation(Animation.spring(
                    response: 0.87, // like mass of an object
                    dampingFraction: 0.7, // larger value reduces bounciness
                    blendDuration: 1))
                .onTapGesture {
                    self.zoomPhoto.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
