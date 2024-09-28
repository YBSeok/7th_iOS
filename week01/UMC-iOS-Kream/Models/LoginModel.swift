//
//  LoginModel.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import Foundation

struct LoginModel {
    var id: String = ""
    var pwd: String = ""
    
    // Update user's id
    mutating func updateId(inputId:String) {
        self.id = "\(inputId)"
    }
    
    // Update user's pwd
    mutating func updatePwd(inputPwd:String) {
        self.pwd = "\(inputPwd)"
    }
}



