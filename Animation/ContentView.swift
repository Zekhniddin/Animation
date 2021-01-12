//
//  ContentView.swift
//  Animation
//
//  Created by Зехниддин on 12/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var angleDegreeChanged = false
    @State private var sizeChanged = false
    @State private var opacityChanged = false
    
    var body: some View {
        Image("visa_card")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(opacityChanged ? 0.4 : 1.0)
            .scaleEffect(sizeChanged ? 0.4 : 1)
            .rotationEffect(Angle(degrees: angleDegreeChanged ? 360 : 0))
            .animation(.spring(response: 1.0, dampingFraction: 0.8))
            .onTapGesture {
                self.sizeChanged.toggle()
                self.opacityChanged.toggle()
                self.angleDegreeChanged.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
