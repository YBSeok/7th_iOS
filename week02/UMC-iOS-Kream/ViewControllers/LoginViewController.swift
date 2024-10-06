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
        
        // 로그인 버튼 액션 추가
        loginView.loginBtn.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
        
    }
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        return view
    }()
    
    // 버튼 클릭 시 호출될 메서드
    @objc
    private func loginBtnTapped() {
        let mainViewController = MainViewController()
        mainViewController.modalPresentationStyle = .fullScreen // 전체 화면 전환
        present(mainViewController, animated: true)
    }
}

