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
    @State private var title: String = "Hello"
    @State private var subTitle: String = "This is Text View"
    
    var body: some View {
        VStack {
            Text("Title")
                .frame(width: 50, alignment: .leading)
                .padding(.horizontal)
                .background(.gray)
        }
        HStack {
            Text(title)
                .font(.headline)
                .padding()
            Spacer()
        }
        .frame(height: 50) // Adjust height as needed
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
        .padding(.horizontal)
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

#Preview{
    CellCustomTextView()
}
