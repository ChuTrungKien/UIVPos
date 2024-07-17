//
//  LandMarkMainVC.swift
//  VPosUISwift
//
//  Created by QRVN on 17/07/2024.
//

import Foundation
import SwiftUI

struct LandMarkMainVC: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Divider()
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandMarkMainVC()
}
