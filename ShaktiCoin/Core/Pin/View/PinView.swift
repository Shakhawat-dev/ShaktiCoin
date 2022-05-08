//
//  PinView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 30/4/22.
//

import SwiftUI

struct PinView: View {
    
    let keys = (1...9)
    
    var body: some View {
        ZStack {
            BackgroundImageView(imageName: "Welcome-Tour-Image")
            
            VStack(spacing: 32.0) {
                Image("logo-title")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 180)
                    .padding()
                
                HStack {
                    Text("Please enter your")
                        .label(.l4)
                    
                    Text("PIN")
                        .underline()
                        .label(.l4)
                        
                }
                .foregroundColor(.white)
                
                HStack(spacing: 16.0) {
                    
                    ForEach( 0...5, id: \.self) { _ in
                        Image(systemName: "circle.fill")
                    }
                }
                .foregroundColor(.white)
                
                let columns = [
                    GridItem(.adaptive(minimum: 80)),
                    GridItem(.adaptive(minimum: 80)),
                    GridItem(.adaptive(minimum: 80))
                    ]
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(keys, id: \.self) { item in
                        Button {
                            // Do Something
                        } label: {
                            Text("\(item)")
                                .label(.l22)
                                .padding(24)
                                .background(
                                    Circle()
                                        .fill(Color.theme.semiTransparentGray)
                                )
                        }

                        
                    }
                    
                    Button {
                        // Do Something
                    } label: {
                        Image("backspace-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .padding(10)
                    }

                    Button {
                        // Do Something
                    } label: {
                        Text("0")
                            .label(.l22)
                            .padding(24)
                            .background(
                                Circle()
                                    .fill(Color.theme.semiTransparentGray)
                                )
                    }
                    
                    Button {
                        // Do Something
                    } label: {
                        Image("enter-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .padding(10)
                    }
                    
                    
                    
                    
                }
                .foregroundColor(.white)
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 48)
        }
    }
}

struct PinView_Previews: PreviewProvider {
    static var previews: some View {
        PinView()
    }
}
