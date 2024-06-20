//
//  ContentView.swift
//  VPosUISwift
//
//  Created by QRVN on 08/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetail = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Main View")
                Button(action: {
                    self.showDetail = true
                }) {
                    Text("Go to Detail View")
                }
            }
            
            if showDetail {
                DetailView(showDetail: $showDetail)
                    .transition(.move(edge: .trailing))
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DetailView: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {
                    self.showDetail = false
                }) {
                    Image(systemName: "arrow.left")
                }
                Spacer()
                Text("Di chuyen")
                    .foregroundColor(.white)
                    .font(.headline)
                Spacer()
                Image(systemName: "arrow.left")
                    .opacity(0)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .padding(.top, 44)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}
