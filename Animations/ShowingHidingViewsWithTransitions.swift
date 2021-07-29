//
//  ShowingHidingViewsWithTransitions.swift
//  Animations
//
//  Created by albik on 29.07.2021.
//

import SwiftUI

struct ShowingHidingViewsWithTransitions: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                self.isShowingRed.toggle()
                }
            }
            if isShowingRed {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                //.transition(.asymmetric(insertion: .scale, removal: .opacity))
                .transition(.pivot)
            }
        }
    }
}

struct ShowingHidingViewsWithTransitions_Previews: PreviewProvider {
    static var previews: some View {
        ShowingHidingViewsWithTransitions()
    }
}
