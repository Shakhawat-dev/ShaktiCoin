//
//  ForgotPinDialogueView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 7/5/22.
//

import SwiftUI

struct ForgotPinDialogueView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image("pass-icon")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 64, height: 2)
                    .background(
                        Circle()
                    )
                
                Text("Forgot PIN*?")
                    .label(.l4)
                
            }
        }
    }
}

struct ForgotPinDialogueView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPinDialogueView()
            .previewLayout(.sizeThatFits)
    }
}
