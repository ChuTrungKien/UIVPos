//
//  BackgroundVPos.swift
//  VPosUISwift
//
//  Created by QRVN on 08/04/2024.
//

import Foundation
import SwiftUI

struct BackgroundVPos: View {
    var body: some View {
        VStack {
            HStack {
                Text("A")
                Spacer()
                Text("B")
                Spacer()
                Text("C")
                Spacer()
                Text("D")
            }
            .padding()
            .frame(height: 44)
            .background(Color.white)
            
            Spacer()
            
            ScrollView {
                VStack {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item \(index)")
                            .padding()
                            .frame(width: UIScreen.SCREEN_W - 10)
                    }
                }
            }
            .frame(height: UIScreen.SCREEN_H - 54)
            .background(Color.white)
        }
        .background(Color.gray)
    }
}

#Preview {
    BackgroundVPos()
}

extension UIScreen {
    static let SCREEN_W = UIScreen.main.bounds.size.width
    static let SCREEN_H = UIScreen.main.bounds.size.height
}

