//
//  LandMarkDetail.swift
//  VPosUISwift
//
//  Created by QRVN on 18/07/2024.
//

import Foundation
import SwiftUI

struct LandMarkDetail: View {
    var landMark: ObjLandMark
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 300)
            
            CircleImage(landMark: landMarks[0])
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                HStack {
                    Text(landMark.park)
                    Spacer()
                    Text(landMark.state)
                }
                .font(.subheadline)
                
                Divider()
                Text("About \(landMark.name)")
                    .font(.title2)
                Divider()
                Text(landMark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandMarkDetail(landMark: landMarks[0])
}
