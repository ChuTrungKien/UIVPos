//
//  MyApp.swift
//  VPosUISwift
//
//  Created by QRVN on 19/07/2024.
//

import Foundation
import SwiftUI

struct MyApp: View {
    var body: some View {
        ScrollView {
            TextAndSymbol()
            
        }
        
    }
}

#Preview {
    MyApp()
}

struct TextAndSymbol: View {
    @State private var name: String = ""
    @State private var nameOnChangeTextField: String = ""
    @State private var beginText: Bool = false
    @State private var changeText: String = ""
    @State private var endEditText: String = ""
    
    var body: some View {
        ScrollView{
            Text("Hamlet")
                .font(.largeTitle)
            Text("by William Shakespeare")
                .font(.caption)
                .italic()
            
            Divider()
            
            HStack {
                Image(systemName: "folder.badge.plus")
                Image(systemName: "heart.circle.fill")
                Image(systemName: "alarm")
            }
            .font(.largeTitle)
            .symbolRenderingMode(.multicolor)
            
            Divider()
            
            Label("Favorite Books", systemImage: "books.vertical")
                .font(.largeTitle)
                .labelStyle(.titleAndIcon)
            
            Divider()
            
            //tim hieu ve TextField:
            VStack{
                TextField("", text: $name)
                    .textFieldStyle(
                        CustomTextFieldStyle(placeholder: "UserName",
                                                         placeholderColor: .blue,
                                                         placeholderBgColor: .white,
                                                         isEditing: !self.name.isEmpty))
                Spacer()
                Text(name == "" ? "Please, input your name!" : "Hello, \(name)!")
                Spacer()
                Button(action: {
                    name = ""
                }, label: {
                    Text("Clear")
                })
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .padding(.top, 24)
            .padding()
            
            Divider()
            
            //bat su kien khi TextField co su thay doi:
            VStack{
                Text("Bắt sự kiện thay đổi của TextField")
                    .padding(.bottom, 16)
                TextField("", text: $nameOnChangeTextField) {isBegin in
                    if isBegin {
                        self.beginText = true
                    } else {
                        self.endEditText = nameOnChangeTextField
                    }
                } onCommit: {
                    print("aaa")
                }
                    .textFieldStyle(
                        CustomTextFieldStyle(placeholder: "InputText",
                                                         placeholderColor: .blue,
                                                         placeholderBgColor: .white,
                                                         isEditing: !self.nameOnChangeTextField.isEmpty))
                Spacer()
                HStack{
                    Text("Begin edt:")
                    Spacer()
                    Text(self.beginText ? "Bat dau" : "...")
                }
                Spacer()
                HStack{
                    Text("Changed edt:")
                    Spacer()
                    Text(nameOnChangeTextField)
                }
                Spacer()
                HStack{
                    Text("DidEnd edt:")
                    Spacer()
                    Text(endEditText)
                }
                Spacer()
            }
            .frame(height: 300)
            .padding()
        }
    }
}
