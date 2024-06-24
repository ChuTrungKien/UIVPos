//
//  SkyFloatingText.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 24/06/2024.
//

import Foundation
import SwiftUI

struct SkyFloating: View {
    @State private var text: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text("First Name")
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
        .padding()
    }
}

#Preview {
    SkyFloating()
}
