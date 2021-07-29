//
//  SwiftUIView.swift
//  Animations
//
//  Created by albik on 28.07.2021.
//

import SwiftUI

struct ExplicitAnimation: View {
    @State private var animationAmount = 0.0
    @State private var enabled = false
    var body: some View {
        VStack {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
//            withAnimation {
//                self.animationAmount += 360
//            }
                }
                .padding(50)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
            
        Button("Tap Me") {
            self.enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(Color.blue)
        .animation(.default)
        .foregroundColor(enabled ? Color.blue : Color.red)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
        
//        .background(Color.blue)
//        .frame(width: 200, height: 200)
//        .foregroundColor(.white)
    }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
