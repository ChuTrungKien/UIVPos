//
//  CellChonAnhSP.swift
//  VPosUISwift
//
//  Created by QRVN on 20/06/2024.
//

import Foundation
import SwiftUI

struct CellChonAnhSP: View {
    @State private var pathImg: String = ""
    var body: some View {
        VStack(alignment: .center) {
            Image("ic_chon_anh_sp")
                .frame(width: 150, height: 150)
        }
        .padding()
    }
}

#Preview{
    CellChonAnhSP()
}
