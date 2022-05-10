//
//  PinChangeSuccessView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 9/5/22.
//

import SwiftUI

struct PinChangeSuccessView: View {
    var body: some View {
        ZStack {
            BackgroundImageView(imageName: "LoginImage")
            
            VStack(spacing: 32.0) {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                    .padding(.top, 32)
                
                Text("Your PIN has been Updated!")
                    .textLight(.t22)
                    .foregroundColor(.white)
                
                Spacer(minLength: 0)
                
                Button {
                    // Do Something
                } label: {
                    GradientButtonView(text: "Go to my Wallet")
                }

            }
            .padding(.horizontal, 16)
            .padding(.vertical)
        }
    }
}

struct PinChangeSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        PinChangeSuccessView()
    }
}
