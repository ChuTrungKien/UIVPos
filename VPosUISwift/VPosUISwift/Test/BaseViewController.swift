//
//  BaseViewController.swift
//  VPosUISwift
//
//  Created by QRVN on 16/07/2024.
//

import Foundation
import SwiftUI

struct BaseViewController<Content: View>: View {
    let title: String
    let leadingItem: AnyView?
    let trailingItem: AnyView?
    let content: Content
    
    init(title: String,
         leadingItem: AnyView?  = AnyView(Button(action: {
        
    }) {
        Text("Back")
            .foregroundColor(.blue)
    }),
         trailingItem: AnyView?,
         @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
        self.leadingItem = leadingItem
        self.trailingItem = trailingItem
    }
    
    var body: some View {
        NavigationView {
            VStack {
                content
            }
            .navigationBarTitle(Text(title), displayMode: .inline)
            .navigationBarItems(leading: leadingItem, trailing: trailingItem)
        }
    }
}

struct ViewControllerA: View {
    var body: some View {
        BaseViewController(title: "ViewController A",
                           trailingItem: AnyView(
                            Button(action: {
                                print("Home button tapped")
                            }) {
                                Text("Home")
                                    .foregroundColor(.blue)
                            }
                           )) {
                               List {
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                                   Text("First row")
                               }
        }
    }
}

#Preview {
    ViewControllerA()
}
