//
//  GestureAnimating.swift
//  Animations
//
//  Created by albik on 29.07.2021.
//

import SwiftUI

struct GestureAnimating: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    //.onEnded { _ in self.dragAmount = .zero }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            self.dragAmount = .zero
                        }
                    }
                
            )
            .animation(.spring())
        
    }
}

struct GestureAnimating_Previews: PreviewProvider {
    static var previews: some View {
        GestureAnimating()
    }
}
