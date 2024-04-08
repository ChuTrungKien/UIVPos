//
//  ContentView.swift
//  VPosUISwift
//
//  Created by QRVN on 08/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            } else {
                Image(systemName: "globe")
                    .imageScale(.large)
            }
            Text("Hello, world!")
            Text("Mả bố mày").font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
