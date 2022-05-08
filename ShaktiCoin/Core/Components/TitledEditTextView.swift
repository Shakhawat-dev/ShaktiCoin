//
//  TitledEditTextView.swift
//  ShaktiCoin
//
//  Created by Shakhawat Hossain Shahin on 8/5/22.
//

import SwiftUI

struct TitledEditTextView: View {
    @State var title: String? = nil
    @State var placeHolder: String
    @Binding var text: String
    
    @State var isSecured: Bool = false
    
    @State private var isEditing: Bool = false
    @State private var isHidden: Bool = true
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            
            HStack {
                if isSecured {
                    HStack {
                        if isHidden {
                            SecureField(placeHolder, text: $text)
                                .foregroundColor(Color.white)
                        } else {
                            TextField(placeHolder, text: $text, onEditingChanged: { editing in
//                                if editing {
//
//                                    isEditing = editing
//                                } else {
//                                    isEditing = editing
//                                }
                                withAnimation(.easeIn) {
                                    isEditing = editing
                                }
                                
                            })
                        }
                        
                        
                        if isSecured {
                            Button {
                                isHidden.toggle()
                            } label: {
                                Image(systemName: isHidden ? "eye.slash.fill" : "eye.fill")
                            }
                        }
                    }
                } else {
                    TextField(placeHolder, text: $text, onEditingChanged: { editing in
//                        if editing {
//                            isEditing = editing
//                        } else {
//                            isEditing = editing
//                        }
                        
                        withAnimation(.easeIn) {
                            isEditing = editing
                        }
                    })
                }
            }
            .padding()
            .background(
                Rectangle()
                    
                    .stroke(lineWidth: 1)
                
                    .fill(
                        Color.theme.accent
                    )
                    
            )
            .overlay(alignment: .topLeading) {
                Text(title ?? "")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                    .background(
                        Color.white
    
                    )
            }
//            .modifier(OutlinedShadowModifier(isEditing: isEditing))
            
//            Text(title ?? "")
//                .font(.system(size: 16))
//                .fontWeight(.medium)
//                .foregroundColor(Color.theme.accent)
//                .background(
//                    Color.white
//
//                )
//                .offset(x: 16, y: isEditing ? -28 : 0)
//                .clipped()
//
        }
        .foregroundColor(Color.white)
    }
}

struct TitledEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        TitledEditTextView(title: "Password", placeHolder: "Password", text: .constant(""))
            .previewLayout(.sizeThatFits)
            .padding()
            .background(
                Color.gray
            )
    }
}
