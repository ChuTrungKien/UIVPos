//
//  CircleImage.swift
//  VPosUISwift
//
//  Created by QRVN on 17/07/2024.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    var landMark: ObjLandMark
    var body: some View {
        landMark.image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{Circle().stroke(.white, lineWidth: 4)}
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(landMark: landMarks[0])
}
