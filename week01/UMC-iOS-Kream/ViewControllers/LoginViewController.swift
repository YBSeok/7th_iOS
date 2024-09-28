//
//  ViewController.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    var id: LoginModel = LoginModel(id: "")
    var pwd: LoginModel = LoginModel(pwd: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
    }
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        return view
    }()
}

