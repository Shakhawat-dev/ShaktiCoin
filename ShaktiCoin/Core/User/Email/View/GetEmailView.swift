//
//  GetEmailView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 8/5/22.
//

import SwiftUI

struct GetEmailView: View {
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                FormBackgroundView(background: "FormBackground") {
                    VStack {
                        Spacer(minLength: 0)
                        
                        TitledEditTextView(placeHolder: "Enter Email Address", text: $email)
                        
                        Spacer(minLength: 0)
                        
                        Button {
                            // Do something
                        } label: {
                            GradientButtonView(text: "Continue")
                        }

                    }
                    .padding(.vertical)
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

struct GetEmailView_Previews: PreviewProvider {
    static var previews: some View {
        GetEmailView()
    }
}
