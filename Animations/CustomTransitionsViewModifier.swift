//
//  CustomTransitionsViewModifier.swift
//  Animations
//
//  Created by albik on 29.07.2021.
//

import SwiftUI

struct CustomTransitionsViewModifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).transition(.pivot)
    }
}

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint

    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor).clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}








struct CustomTransitionsViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitionsViewModifier()
    }
}
