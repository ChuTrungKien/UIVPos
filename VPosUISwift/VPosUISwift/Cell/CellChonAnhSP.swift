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

struct CellCustomTextView: View {
    @State private var title: String = ""
    @State private var subTitle: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .font(.title3)
                .padding()
            TextEditor(text: $subTitle)
                .padding()
                .border(Color.gray, width: 1)
                .frame(minHeight: 44)
        }
    }
}

struct CellHeaderSP: View {
    @State private var title: String = ""
    @State private var addVal: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text(title)
                    .font(.title3)
                    .padding()
                Button(action: {
                    //action here:
                }
                , label: {
                    Image("...")
                })
            }
        }
    }
}


