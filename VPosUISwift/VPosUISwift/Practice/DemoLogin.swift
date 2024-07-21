//
//  DemoLogin.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 20/7/24.
//

import Foundation
import SwiftUI

struct DemoLogin: View {
    //khai bao bien viewModel:
    @StateObject var viewModel = DemoLoginViewModel()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image("turtlerock")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.blue, lineWidth: 2)
                        }
                        .shadow(radius: 7)
                        .padding(.leading)
                                    
                    VStack(alignment: .leading){
                        Text("Welcome to")
                            .font(.headline)
                        Text("Kien Gaming")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .padding(.leading)
                }
                .padding(.horizontal)
                
                VStack {
                    Text("Login with your account...")
                        .italic()
                        .padding()
                    TextField("", text: $viewModel.userName)
                        .textFieldStyle(CustomTextFieldStyle(placeholder: "UserName", placeholderColor: .black, placeholderBgColor: .white, isEditing: !self.viewModel.userName.isEmpty))
                        .padding(.horizontal)
                    
                    SecureField("", text: $viewModel.passWord)
                        .textFieldStyle(CustomTextFieldStyle(placeholder: "Password", placeholderColor: .black, placeholderBgColor: .white, isEditing: !self.viewModel.passWord.isEmpty))
                        .padding()
                }
            }
            
            HStack(alignment: .center) {
                Button(action: {
                    viewModel.login()
                }, label: {
                    Text("Login")
                        .bold()
                        .foregroundStyle(.white)
                })
                .customButton(.black, isDisabled: !viewModel.checkValid())
                .disabled(!viewModel.checkValid())
                
                
                Button(action: {
                    viewModel.reset()
                }, label: {
                    Text("Clear")
                        .bold()
                        .foregroundStyle(.white)
                })
                .customButton(.red)
                .padding(.leading)
            }
            .padding()
        }
        .alert(isPresented: $viewModel.alert, content: {
            Alert(
                title: Text(viewModel.isLogined ? "Kien Gaming" : "Error"),
                message: Text(viewModel.message),
                dismissButton: .default(Text("Got it!")))
        })
    }
}

#Preview {
    DemoLogin()
}
