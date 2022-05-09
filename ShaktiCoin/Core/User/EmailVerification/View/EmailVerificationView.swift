//
//  EmailVerificationView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 9/5/22.
//

import SwiftUI

struct EmailVerificationView: View {
    @State var verificationCode: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                FormBackgroundView(background: "FormBackground") {
                    VStack(spacing: 20.0) {
                        
                        Spacer(minLength: 0)
                        
                        VStack {
                            Text("Thank you!")
                                .label(.l4)
                            Text("Enter the Verification code sent to your Email")
                                .label(.l4)
                        }
                        .foregroundColor(.white)
                        
                        TitledEditTextView(placeHolder: "SMS Verification code", text: $verificationCode)
                        
                        
                        Button {
                            // Do something
                        } label: {
                            GradientButtonView(text: "Continue")
                        }

                        Text("Resend SMS Verfication code in 90s")
                            .underline()
                            .label(.l4)
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 0)
                            
                        Text("Let me go back and correct something")
                            .underline()
                            .label(.l4)
                            .foregroundColor(.white)
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 16)
                }
                
            }
        }
    }
}

struct EmailVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        EmailVerificationView()
    }
}
