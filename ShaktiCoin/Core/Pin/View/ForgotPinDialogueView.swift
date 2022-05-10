//
//  ForgotPinDialogueView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 7/5/22.
//

import SwiftUI

struct ForgotPinDialogueView: View {
    @State var forgotPass: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                HStack {
                    Image("pass-icon")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                        .frame(width: 48, height: 48)
                        .background(
                            Circle()
                        )
                    
                    Text("Forgot PIN*?")
                        .label(.l6)
                        .foregroundColor(Color.theme.accent)
                }
                .padding(.vertical)
                .padding(.horizontal, 8)
                
                Spacer(minLength: 0)
                
                Image(systemName: "xmark")
                    .padding()
                    .foregroundColor(Color.gray)
                
            }
            .background(
                Color.theme.backgroundGray
            )
            
            VStack(alignment: .leading, spacing: 16.0) {
                Text("We will help you to re-set your PIN. Please consider the following.")
                    .label(.l6)
                    .foregroundColor(Color.theme.textGrayColor)
                
                Text("*4 to 6 digits linked to something that you own, or a memorable experience from a unique situation or numbers associated with your loved ones.")
                    .fontWeight(.light)
                    .label(.l6)
                    .foregroundColor(Color.theme.textGrayColor)
            }
            .padding()
            
            Button {
                // Do Something
            } label: {
                GradientButtonView(text: "Forgot Pin?")
            }
            .padding()

            

        }
    }
}

struct ForgotPinDialogueView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPinDialogueView()
            .previewLayout(.sizeThatFits)
    }
}
