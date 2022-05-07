//
//  BackgroundImageView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 30/4/22.
//

import SwiftUI

struct BackgroundImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .overlay {
                Color.black.opacity(0.74)
            }
            .ignoresSafeArea()
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView(imageName: "Welcome-Tour-Image")
    }
}
