//
//  ExtensionView.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 21/7/24.
//

import Foundation
import SwiftUI

extension View {
    func customButton(_ color: Color, isDisabled: Bool = false) -> some View {
        ModifiedContent(content: self, modifier: CustomButtonViewModifier(colorBackground: color, isDisabled: isDisabled))
    }
}
