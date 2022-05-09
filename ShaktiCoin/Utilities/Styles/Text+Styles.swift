//
//  Text+Styles.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 30/4/22.
//

import SwiftUI

enum TextStyles {}

extension TextStyles {
    enum Label: Typography {
        case l0
        case l1
        case l2
        case l3
        case l4
        case l6
        case l8
        case l22

        var weight: Font.Weight { .regular }

        var fontName: String { "Lato-Regular" }

        var size: CGFloat {
            switch self {
            case .l0: return 10
            case .l1: return 11
            case .l2: return 12
            case .l3: return 13
            case .l4: return 14
            case .l6: return 16
            case .l8: return 18
            case .l22: return 22
            }
        }
    }
    
    enum TextLight: Typography {
        case t10
        case t11
        case t12
        case t13
        case t14
        case t16
        case t18
        case t22

        var weight: Font.Weight { .light }

        var fontName: String { "Lato-Light" }

        var size: CGFloat {
            switch self {
            case .t10: return 10
            case .t11: return 11
            case .t12: return 12
            case .t13: return 13
            case .t14: return 14
            case .t16: return 16
            case .t18: return 18
            case .t22: return 22
            }
        }
    }
}


extension View {
    func label(_ label: TextStyles.Label) -> some View {
        style(label)
    }
    
    func textLight(_ label: TextStyles.TextLight) -> some View {
        style(label)
    }
}
