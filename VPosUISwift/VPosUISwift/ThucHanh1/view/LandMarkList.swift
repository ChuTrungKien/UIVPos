//
//  LandMarkList.swift
//  VPosUISwift
//
//  Created by QRVN on 18/07/2024.
//

import Foundation
import SwiftUI

struct LandMarkList: View {
    @State private var isShowFavoritesOnly = false
    var filterLandMarks: [ObjLandMark] {
        if isShowFavoritesOnly {
            landMarks.filter{$0.isFavorite}
        } else {
            landMarks
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $isShowFavoritesOnly, label: {
                    Text("Favorites only")
                })
                
                ForEach(filterLandMarks) { landmark in
                    NavigationLink {
                        LandMarkDetail(landMark: landmark)
                    } label: {
                        LandMarkRow(landMark: landmark)
                    }
                }
            }
            .animation(.default, value: filterLandMarks)
            .navigationTitle("LandMarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandMarkList()
}
