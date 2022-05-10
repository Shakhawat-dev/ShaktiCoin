//
//  SignInView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 9/5/22.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var reEnterPin: String = ""
    @State var hint: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                FormBackgroundView(background: "FormBackground") {
                    VStack(spacing: 16.0) {
                        
                        VStack {
                            Text("Please Enter your Password to Sign In")
                                .label(.l4)
                        }
                        .foregroundColor(.white)
                        .padding(.top)
                        
                        TitledEditTextView(placeHolder: "Email Address", text: $email)
                        
                        TitledEditTextView(placeHolder: "Password", text: $hint, isSecured: true)

                        rememberAndForgetSection
                        
                        Spacer(minLength: 0)
                            
                        Button {
                            // Do something
                        } label: {
                            GradientButtonView(text: "Sign In")
                        }

                    }
//                    .padding(.vertical)
                    .padding(.horizontal, 16)
                }
                
            }
        }
    }
}

extension SignInView {
    var rememberAndForgetSection: some View {
        HStack {
            HStack {
                Button {
                    // Do Something
                } label: {
                    Rectangle()
                        .frame(width: 16, height: 16)
                        .padding(4)
                        .modifier(BrownStrokeModifier())
                }
                
                Text("Rememeber me")
                    .textLight(.t14)
                    .foregroundColor(.white)

            }
            
            Spacer(minLength: 0)
            
            Text("Forgot password?")
                .underline()
                .textLight(.t14)
                .foregroundColor(.white)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
