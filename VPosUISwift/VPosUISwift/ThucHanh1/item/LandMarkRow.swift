//
//  LandMarkRow.swift
//  VPosUISwift
//
//  Created by QRVN on 18/07/2024.
//

import Foundation
import SwiftUI

struct LandMarkRow: View {
    var landMark: ObjLandMark
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay{Circle().stroke(.blue, lineWidth: 1)}
            Text(landMark.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        LandMarkRow(landMark: landMarks[0])
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
        Divider()
        LandMarkRow(landMark: landMarks[1])
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
    }
}

