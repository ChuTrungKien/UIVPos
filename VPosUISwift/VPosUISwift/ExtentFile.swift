//
//  ExtentFile.swift
//  VPosUISwift
//
//  Created by QRVN on 20/06/2024.
//

import Foundation
import SwiftUI

struct SafeAreaInsetsModifier: ViewModifier {
    let action: (EdgeInsets) -> Void
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            Color.blue
                .onAppear {
                    action(geometry.safeAreaInsets)
                }
        }
    }
}

extension View {
    func onSafeAreaInsets(perfom action: @escaping (EdgeInsets) -> Void) -> some View {
        self.modifier(SafeAreaInsetsModifier(action: action))
    }
}
