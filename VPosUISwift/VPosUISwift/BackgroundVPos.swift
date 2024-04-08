//
//  BackgroundVPos.swift
//  VPosUISwift
//
//  Created by QRVN on 08/04/2024.
//

import Foundation
import SwiftUI

struct BackgroundVPos: View {
    var body: some View {
        VStack {
            HStack {
                Text("A")
                Spacer()
                Text("B")
                Spacer()
                Text("C")
                Spacer()
                Text("D")
            }
            .padding()
            .frame(height: 44)
            .background(Color.white)
            
            Spacer()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item \(index)")
                            .padding()
                            .frame(width: UIScreen.SCREEN_W - 10)
                    }
                    MoTaGiayPhep()

                }
            }
            .background(Color.white)
        }
        .background(Color.gray)
    }
}

struct MoTaGiayPhep: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Công ty cổ phần dịch vụ nền di động Việt Nam")
                .font(.footnote)
            Text("Giấy phép trung gian thanh toán 41/GP - NHNN 12/03/2018")
                .font(.footnote)
                .padding(.top, 1)
            HStack(alignment: .center) {
                Text("VPos")
                    .font(.largeTitle)
                Text("phiên bản 1.1")
                    .font(.title2)
                    .padding(.leading, 10)
            }
            .frame(width: UIScreen.SCREEN_W - 10, height: 44)
            Text("")
                .frame(height: 50)
        }
    }
}

struct NhomDangKy: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                Text("Pass")
            }
            Divider()
            HStack(alignment: .center) {
                Text("Pass token")
            }
            HStack {
                Button(action: {
                    //action here
                }, label: {
                    Text("Đăng ký")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(12)
                })
            }
        }
    }
}

#Preview {
    NhomDangKy()
}

extension UIScreen {
    static let SCREEN_W = UIScreen.main.bounds.size.width
    static let SCREEN_H = UIScreen.main.bounds.size.height
}

