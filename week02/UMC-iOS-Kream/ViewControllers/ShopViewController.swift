//
//  ModalViewController.swift
//  UMC-7th-Workbook-2
//
//  Created by 박준석 on 10/6/24.
//

import UIKit

import SnapKit

class ShopViewController: UIViewController {

    private let label = UILabel()
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "Shop View"
        label.textColor = .cyan
        
        button.setTitle("버튼을 눌러주세요", for: .normal)
        button.backgroundColor = .systemIndigo
        
        view.addSubview(label)
        view.addSubview(button)
        
        label.snp.makeConstraints {
            $0.top.equalToSuperview().offset(80)
            $0.centerX.equalToSuperview()
        }
        
        button.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(55)
            $0.width.equalTo(256)
        }
        
        // 버튼 클릭 시 실행될 액션 연결
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        
    }
    
    @objc
    private func buttonDidTap() {
        let viewController = UIViewController()
        
        viewController.view.backgroundColor = .brown
        viewController.modalPresentationStyle = .fullScreen
        
        present(viewController, animated: true)
    }

}
