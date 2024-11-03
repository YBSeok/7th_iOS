//
//  ModalViewController.swift
//  UMC-7th-Workbook-2
//
//  Created by 박준석 on 10/6/24.
//

import UIKit

import SnapKit

class MyPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myPageView
        
        // 버튼 클릭 시 실행될 액션 연결
        myPageView.manageProfileButton.addTarget(self, action: #selector(manageProfileButtonTapped), for: .touchUpInside)
    }
    
    private lazy var myPageView: MyPageView = {
        let view = MyPageView()
        return view
    }()

    // 프로필 관리 버튼이 눌렸을 때 실행될 메서드
    @objc
    private func manageProfileButtonTapped() {
        let manageProfileViewController = ManageProfileViewController() // 관리 화면 뷰 컨트롤러로 이동
        self.navigationController?.pushViewController(manageProfileViewController, animated: true)
    }
    
}
