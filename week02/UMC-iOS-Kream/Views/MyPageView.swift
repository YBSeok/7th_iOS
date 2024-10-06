//
//  LoginView.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import UIKit

import SnapKit

class MyPageView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {
        self.addSubview(accountInfoView)
        self.addSubview(buttonStackView)
        
        accountInfoView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(126)
            $0.left.equalToSuperview().offset(32)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.top.equalTo(accountInfoView.snp.bottom).offset(26)  // accountInfoView의 아래에 16포인트
            make.centerX.equalToSuperview()  // 수평 중앙 정렬
            make.width.equalTo(328)  // 버튼들의 총 가로 길이
            make.height.equalTo(26)  // 버튼들의 높이
        }
    }

    // My Account info
    public lazy var accountInfoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        // 프로필 이미지 (원형)
        let profileImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "login_logo") // 기본 프로필 이미지
            imageView.contentMode = .scaleAspectFill
            imageView.layer.cornerRadius = 45 // 반지름을 반으로 설정하여 원형으로 만듦 (예: 60x60 크기일 경우)
            imageView.layer.masksToBounds = true
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()

        // 계정 이름 라벨
        let accountNameLabel: UILabel = {
            let label = UILabel()
            label.text = "BongSeok"
            label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        // 팔로워, 팔로잉 수 라벨
        let followerFollowingLabel: UILabel = {
            let label = UILabel()
            label.text = "팔로워: 100  팔로잉: 50"
            label.font = UIFont.systemFont(ofSize: 12)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        // 수직 스택 뷰: 계정 이름과 팔로워/팔로잉 정보를 수직으로 나란히
        let infoStackView: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [accountNameLabel, followerFollowingLabel])
            stackView.axis = .vertical
            stackView.spacing = 4
            stackView.alignment = .leading
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()

        // 수평 스택 뷰: 왼쪽에 프로필 이미지, 오른쪽에 정보 스택 뷰를 나란히
        let horizontalStackView: UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [profileImageView, infoStackView])
            stackView.axis = .horizontal
            stackView.spacing = 12
            stackView.alignment = .center
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()

        view.addSubview(horizontalStackView)

        // 제약 조건 설정
        NSLayoutConstraint.activate([
            profileImageView.widthAnchor.constraint(equalToConstant: 60),
            profileImageView.heightAnchor.constraint(equalToConstant: 60),
            horizontalStackView.topAnchor.constraint(equalTo: view.topAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        return view
    }()
    
    // 프로필 관리 버튼
    public lazy var manageProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("프로필 관리", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10 // 원하는 둥글기 조절
        button.layer.borderWidth = 1 // 테두리 두께
        button.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        return button
    }()

    // 프로필 공유 버튼
    public lazy var shareProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("프로필 공유", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10 // 원하는 둥글기 조절
        button.layer.borderWidth = 1 // 테두리 두께
        button.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        return button
    }()

    // 버튼들을 포함하는 수평 스택뷰
    public lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [manageProfileButton, shareProfileButton])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
}
