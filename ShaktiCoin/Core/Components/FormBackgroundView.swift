//
//  FormBackgroundView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 8/5/22.
//

import SwiftUI

struct FormBackgroundView<Content: View>: View {
    
    let content: Content
    let backgroundImage: String
    
    init( background: String, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.backgroundImage = background
    }
    
    var body: some View {
        ZStack {
            BackgroundImageView(imageName: backgroundImage)
            
//            ScrollView {
                VStack {
                    VStack(spacing: 16.0) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 96, height: 96)
                        
                        Text("Welcome to Shakti World")
                            .textLight(.t22)
                            .foregroundColor(.white)
                        
                        Text("The Next-Gen DeFi Network")
                            .label(.l4)
                            .foregroundColor(.white)
                    }
                    
                    Spacer(minLength: 0)
                    
                    content
                    
                    Spacer(minLength: 0)
                }
                .padding(.vertical)
//            }
        }
    }
}

struct FormBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        FormBackgroundView(background: "FormBackground") {
            Text("Hello")
        }
    }
}
