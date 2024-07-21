//
//  DemoLoginViewModel.swift
//  VPosUISwift
//
//  Created by Chu Trung Kien on 21/7/24.
//

import Foundation
import SwiftUI

class DemoLoginViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var passWord: String = ""
    
    @Published var alert = false
    @Published var isLogined = false
    @Published var message: String = ""
    
    func checkValid() -> Bool {
        return !userName.isEmpty && !passWord.isEmpty
    }
    
    func reset() {
        userName = ""
        passWord = ""
    }
    
    func login() {
        if userName == "admin" && passWord == "123456" {
            alert = true
            isLogined = true
            message = "Login successful!"
        } else {
            alert = true
            isLogined = false
            message = "Username or password is incorrect!!!"
        }
    }
}
