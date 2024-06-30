//
//  SkyFloatingText.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 24/06/2024.
//

import Foundation
import SwiftUI

struct CheckContentView: View {
    @State private var text: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    var body: some View {
        VStack(spacing: 15) {
            Spacer()
            Spacer()
            VStack {
                SkyFloating(placholder: "First Name", text: $text)
                SkyFloating(placholder: "Last Name", text: $text2)
            }
            Spacer()
            VStack {
                TextField("", text: $text3)
                    .textFieldStyle(CustomTextFieldtyle(placeholder: "Address", placeholderColor: .blue, placeholderBgColor: .white, isEditing: !self.text3.isEmpty))
                    .padding(.vertical, 10)
                TextField("", text: $text4)
                    .textFieldStyle(CustomTextFieldtyle(placeholder: "Email", placeholderColor: .blue, placeholderBgColor: .white, isEditing: !self.text4.isEmpty))
            }
            Spacer()
            Spacer()
        }
        .padding()
        .onTapGesture {
            self.hiddenKeyboard()
        }
    }
}

#Preview {
    CheckContentView()
}

struct SkyFloating: View {
    let placholder: String
    @Binding var text: String
    var body: some View {
        ZStack(alignment: .leading) {
            Text(placholder)
                .foregroundColor(.blue.opacity(0.5))
                .offset(y: self.text.isEmpty ? 0 : -25)
                .scaleEffect(self.text.isEmpty ? 1: 0.9, anchor: .leading)
                .font(.system(self.text.isEmpty ? .title2 : .title3, design: .rounded))
            TextField("", text: self.$text)
                .foregroundColor(.blue)
        }
        .padding(.top, self.text.isEmpty ? 0 : 10)
        .animation(.default, value: 5)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(text.isEmpty ? .blue.opacity(0.5) : .blue, lineWidth: 2)
        )
        .cornerRadius(10)
        .frame(height: 70)
    }
}

// custom textfield ke thua tu TextField Modifier:
struct CustomTextFieldtyle: TextFieldStyle {
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
                .offset(y: self.isEditing ? -28 : 0)
                .scaleEffect(self.isEditing ? 0.9 : 1, anchor: .leading)
            
            configuration
                .font(.system(.title2, design: .rounded))
                .foregroundColor(placeholderColor)
        }
        .animation(.easeOut, value: 10)
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(self.isEditing ? placeholderColor.opacity(0.5) : placeholderColor, lineWidth: 2)
        )
    }
}
