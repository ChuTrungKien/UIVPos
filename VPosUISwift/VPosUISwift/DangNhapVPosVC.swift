//
//  DangNhapVPosVC.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 17/04/2024.
//

import Foundation
import SwiftUI

struct DangNhapVPosVC: View {
    var body: some View {
        MyHeaderView()
    }
}

#Preview {
    DangNhapVPosVC()
}

struct MyHeaderView: View {
    var body: some View {
        HStack {
            ZStack {
                Image("flag_vn")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32, height: 32)
            }
            Spacer()
            ZStack {
                Image("ic_noti")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
            }
            Spacer()
            ZStack {
                Image("ic_gio_hang")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 38, height: 38)
                    .padding(.top, 6)
            }
            Spacer()
            ZStack {
                Image("ic_more")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 22, height: 22)
            }
        }
        .padding()
        .frame(width: UIScreen.SCREEN_W, height: 44)
        .background(Color.blue)
    }
}


