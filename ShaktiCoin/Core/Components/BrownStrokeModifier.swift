//
//  BrownStrokeModifier.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 9/5/22.
//

import SwiftUI

struct BrownStrokeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(
                        Color.theme.accent
                    )
            )
    }
}


