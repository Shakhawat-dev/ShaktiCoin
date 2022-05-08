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
            
            Text("Hello, World!")
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
