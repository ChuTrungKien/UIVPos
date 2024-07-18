//
//  LandMarkList.swift
//  VPosUISwift
//
//  Created by QRVN on 18/07/2024.
//

import Foundation
import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landMarks) { landmark in
                NavigationLink {
                    LandMarkDetail(landMark: landmark)
                } label: {
                    LandMarkRow(landMark: landmark)
                }
            }
            .navigationTitle("LandMarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandMarkList()
}
