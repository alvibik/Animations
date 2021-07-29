//
//  GestureAnimating2.swift
//  Animations
//
//  Created by albik on 29.07.2021.
//

import SwiftUI

struct GestureAnimating2: View {
    let letters = Array("Hello SwiftUI")
        @State private var enabled = false
        @State private var dragAmount = CGSize.zero

        var body: some View {
            HStack(spacing: 0) {
                ForEach(0..<letters.count) { num in
                    Text(String(self.letters[num]))
                        .padding(5)
                        .font(.title)
                        .background(self.enabled ? Color.blue : Color.red)
                        .offset(self.dragAmount)
                        .animation(Animation.default.delay(Double(num) / 20))
                }
            }
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded { _ in
                        self.dragAmount = .zero
                        self.enabled.toggle()
                    }
            )
    }
}

struct GestureAnimating2_Previews: PreviewProvider {
    static var previews: some View {
        GestureAnimating2()
    }
}
