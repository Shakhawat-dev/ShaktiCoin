//
//  NewPinView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 9/5/22.
//

import SwiftUI

struct NewPinView: View {
    @State var pin: String = ""
    @State var reEnterPin: String = ""
    @State var hint: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                FormBackgroundView(background: "FormBackground") {
                    VStack(spacing: 16.0) {
                        
                        Spacer(minLength: 0)
                        
                        VStack {
                            Text("Enter your new PIN*")
                                .label(.l4)
                        }
                        .foregroundColor(.white)
                        
                        TitledEditTextView(placeHolder: "Enter your new PIN", text: $pin)
                        
                        TitledEditTextView(placeHolder: "Re-enter your new PIN", text: $reEnterPin)
                        
                        TitledEditTextView(placeHolder: "Enter Email Address", text: $hint, isSecured: true)
                        
                        Text("*4 to 6 digits linked to something that you own, or a memorable experience from a unique situation or numbers associated with your loved ones.")
                            .textLight(.t11)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(.white)
                        
                        Button {
                            // Do something
                        } label: {
                            GradientButtonView(text: "Continue")
                        }

                        resendVerificationAndCorrectSection
                    }
//                    .padding(.vertical)
                    .padding(.horizontal, 16)
                }
                
            }
        }
    }
}

extension NewPinView {
    var resendVerificationAndCorrectSection: some View {
        VStack {
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
        
    }
}

struct NewPinView_Previews: PreviewProvider {
    static var previews: some View {
        NewPinView()
    }
}
