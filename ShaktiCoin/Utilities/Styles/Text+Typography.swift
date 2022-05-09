//
//  Text+Typography.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 30/4/22.
//

import SwiftUI

// MARK: - Typography
protocol Typography: ViewModifier {
    var fontName: String { get }
    var size: CGFloat { get }
    var weight: Font.Weight { get }
}

extension Typography {
    var fontName: String { "ProximaNova-Regular" }
    
    var font: Font {
        .custom(fontName, size: size)
//        .weight(weight)
    }

    func body(content: Content) -> some View {
        content
            .font(font)
    }
}

extension View {
    func style<T: Typography>(_ style: T) -> some View {
        modifier(style)
    }
}
