//
//  MyApp.swift
//  VPosUISwift
//
//  Created by QRVN on 19/07/2024.
//

import Foundation
import SwiftUI

struct MyApp: View {
    var body: some View {
        ScrollView {
            TextAndSymbol()
            
        }
        
    }
}

#Preview {
    MyApp()
}

struct TextAndSymbol: View {
    var body: some View {
        Text("Hamlet")
            .font(.largeTitle)
        Text("by William Shakespeare")
            .font(.caption)
            .italic()
        
        Divider()
        
        HStack {
            Image(systemName: "folder.badge.plus")
            Image(systemName: "heart.circle.fill")
            Image(systemName: "alarm")
        }
        .font(.largeTitle)
        .symbolRenderingMode(.multicolor)
        
        Divider()
        
        Label("Favorite Books", systemImage: "books.vertical")
            .font(.largeTitle)
            .labelStyle(.titleAndIcon)
        
        Divider()
        
        
    }
}
