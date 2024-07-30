//
//  FetchDataList.swift
//  VPosUISwift
//
//  Created by QRVN on 30/07/2024.
//

import Foundation
import SwiftUI

struct FetchDataList: View {
    @StateObject var vmodel = SongListViewModel()
    
    var body: some View {
        NavigationView {
            List(vmodel.songs) { song in
                Text(song.name)
            }
            .listStyle(InsetListStyle())
            .navigationBarTitle(Text("Songs"))
        }
    }
}

#Preview {
    FetchDataList()
}
