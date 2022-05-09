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
                    TextField("", text: $text, onEditingChanged: { editing in
                        withAnimation(.easeIn) {
                            isEditing = editing
                        }
                    })
                }
            }
            .padding()
            .background(alignment: .leading) {
                if !isSecured {
                    Text(placeHolder)
                        .textLight(.t14)
                        .padding(.horizontal, 8)
                        .foregroundColor(Color.white)
                        .background(
                            isEditing ? Color.theme.accent : Color.clear
                        )
                        .scaleEffect(isEditing ? 0.8 : 1.0)
                        .offset(x: 0, y: isEditing ? -28 : 0)
                        .padding(8)
                }
                
                
            }
            .modifier(BrownStrokeModifier())
        }
        .foregroundColor(Color.white)
    }
}

struct TitledEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitledEditTextView(title: "Password", placeHolder: "Password", text: .constant(""))
                .previewLayout(.sizeThatFits)
                .padding()
                .background(
                    Color.gray
            )
            
            TitledEditTextView(title: "Hello", placeHolder: "3", text: .constant(""), isSecured: true)
                .previewLayout(.sizeThatFits)
                .padding()
                .background(
                    Color.gray
            )
        }
    }
}
