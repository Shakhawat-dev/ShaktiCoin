//
//  GradientButton.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 8/5/22.
//

import SwiftUI

struct GradientButtonView: View {
    
    var text: String
    
    var body: some View {
        HStack {
            Spacer(minLength: 0)
            
            Text(text)
                .fontWeight(.medium)
                .padding()
                .foregroundColor(.white)
            
            Spacer(minLength: 0)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.theme.browDark, Color.theme.brownLight]), startPoint: .leading, endPoint: .trailing)
        )
        .padding()
        
    }
}

struct GradientButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GradientButtonView(text: "Hello")
    }
}
