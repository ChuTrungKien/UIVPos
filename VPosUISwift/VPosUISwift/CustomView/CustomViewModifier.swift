//
//  CustomViewModifier.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 21/7/24.
//

import Foundation
import SwiftUI

//MARK: -> Custom Textfield ke thua tu TextField Modifier:
struct CustomTextFieldStyle: TextFieldStyle {
    let placeholder: String
    let placeholderColor: Color
    let placeholderBgColor: Color
    
    var isEditing: Bool
    
    func _body(configuration: TextField<_Label>) -> some View {
        ZStack(alignment: .leading) {
            Text(placeholder)
                .font(.system(self.isEditing ? .title3 : .title2, design: .rounded))
                .foregroundColor(placeholderColor.opacity(0.5))
                .padding(.horizontal, self.isEditing ? 10 : 0)
                .background(placeholderBgColor)
                .offset(y: self.isEditing ? -34 : 0)
                .scaleEffect(self.isEditing ? 0.9 : 1, anchor: .leading)
            
            configuration
                .font(.system(.title2, design: .rounded))
                .foregroundColor(placeholderColor)
        }
        .frame(height: 40)
        .animation(.easeOut, value: 10)
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(self.isEditing ? placeholderColor : placeholderColor.opacity(0.5), lineWidth: 1)
        )
    }
}

//MARK: -> Custom Button ke thua tu Modifier:
struct CustomButtonViewModifier: ViewModifier {
    let colorBackground: Color
    var isDisabled = false
    
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 8, leading: 24, bottom: 8, trailing: 24))
            .background(isDisabled ? .gray : colorBackground)
            .cornerRadius(8)
            .shadow(color: .gray, radius: 3, x: 1, y: 2)
    }
}



