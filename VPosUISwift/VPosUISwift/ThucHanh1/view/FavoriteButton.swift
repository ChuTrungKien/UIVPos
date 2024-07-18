//
//  FavoriteButton.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 18/7/24.
//

import Foundation
import SwiftUI

struct FavoriteButton: View {
    var isSet: Bool
    
    var body: some View {
        Button {
            
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: true)
}
