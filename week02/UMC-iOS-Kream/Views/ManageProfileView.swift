//
//  LoginView.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import UIKit

import SnapKit

class ManageProfileView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {
        self.addSubview(profileImageView)
        self.addSubview(titleLabel)
        self.addSubview(emailLabel)
        self.addSubview(emailTextfield)
        self.addSubview(emailEditBtn)
        self.addSubview(pwdLabel)
        self.addSubview(pwdTextfield)
        self.addSubview(passwdEditBtn)
        
        profileImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(144)
            $0.left.equalToSuperview().offset(151)
            $0.width.equalTo(90)
            $0.height.equalTo(90)
        }
        
        titleLabel.snp.makeConstraints{
            $0.top.equalTo(profileImageView.snp.bottom).offset(20)
            $0.left.equalToSuperview().offset(27)
        }
        
        emailLabel.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(23)
            $0.left.equalToSuperview().offset(27)
        }
        
        emailTextfield.snp.makeConstraints{
            $0.top.equalTo(emailLabel.snp.bottom).offset(4)
            $0.left.equalToSuperview().offset(27)
            $0.width.equalTo(282)
            $0.height.equalTo(32)
        }
        
        emailEditBtn.snp.makeConstraints{
            $0.top.equalTo(emailLabel.snp.bottom).offset(4)
            $0.left.equalTo(emailTextfield.snp.right).offset(9)
            $0.right.equalToSuperview().offset(-17)
        }
        
        pwdLabel.snp.makeConstraints{
            $0.top.equalTo(emailEditBtn.snp.bottom).offset(23)
            $0.left.equalToSuperview().offset(27)
        }
        
        pwdTextfield.snp.makeConstraints{
            $0.top.equalTo(pwdLabel.snp.bottom).offset(4)
            $0.left.equalToSuperview().offset(27)
            $0.width.equalTo(282)
            $0.height.equalTo(32)
        }
        
        passwdEditBtn.snp.makeConstraints{
            $0.top.equalTo(pwdLabel.snp.bottom).offset(4)
            $0.left.equalTo(pwdTextfield.snp.right).offset(9)
            $0.right.equalToSuperview().offset(-17)
        }
    }

    // Profile image view
    public lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "login_logo")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 45 // 반지름을 반으로 설정하여 원형으로 만듦 (예: 60x60 크기일 경우)
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // Title label
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "프로필 정보"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // Email address label
    public lazy var emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 이메일"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // Email text field
    public lazy var emailTextfield: UITextField = {
        let textField = PaddedTextField(padding: UIEdgeInsets(top: 5, left: 11, bottom: 5, right: 16))
        
        // 플레이스홀더 텍스트 설정
        let placeholderText = "새로운 이메일을 입력해주세요!"
            
        // 속성 설정: 회색 텍스트로 플레이스홀더 설정
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholderText,
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.lightGray,
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)
            ]
        )
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // 테두리 둥글게 만들기
        textField.layer.cornerRadius = 10 // 원하는 둥글기 조절
        textField.layer.borderWidth = 1 // 테두리 두께
        textField.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        textField.clipsToBounds = true // 경계에서 벗어난 부분 잘라내기
        
        return textField
    }()
    
    // Email edit button
    public lazy var emailEditBtn: UIButton = {
        let btn = UIButton()
            
        var configuration = UIButton.Configuration.plain()
        
        // 텍스트 크기를 12로 설정
        let titleAttributes: AttributeContainer = {
            var attributes = AttributeContainer()
            attributes.font = UIFont.systemFont(ofSize: 14)
            attributes.foregroundColor = UIColor.white // 글자 색상을 흰색으로 설정
            return attributes
        }()
        
        configuration.attributedTitle = AttributedString("변경", attributes: titleAttributes)
        configuration.titleAlignment = .center
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 6, bottom: 6, trailing: 5)
        
        btn.configuration = configuration
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.lightGray // 버튼 배경을 회색으로 설정
        
        
        // 테두리 둥글게 만들기
        btn.layer.cornerRadius = 10 // 원하는 둥글기 조절
        btn.layer.borderWidth = 1 // 테두리 두께
        btn.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        btn.clipsToBounds = true // 경계에서 벗어난 부분 잘라내기
        
        return btn
    }()
    
    // Password label
    public lazy var pwdLabel: UILabel = {
        let label = UILabel()
            
        label.text = "유저 비밀번호"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // Password text field
    public lazy var pwdTextfield: UITextField = {
        let textField = PaddedTextField(padding: UIEdgeInsets(top: 5, left: 11, bottom: 5, right: 16))
            
        // 플레이스홀더 텍스트 설정
        let placeholderText = "새로운 비밀번호를 입력해주세요!"
            
        // 속성 설정: 회색 텍스트로 플레이스홀더 설정
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholderText,
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.lightGray,
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)
            ]
        )
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.isSecureTextEntry = true // 비밀번호 입력 시 점으로 표시
        
        // 테두리 둥글게 만들기
        textField.layer.cornerRadius = 10 // 원하는 둥글기 조절
        textField.layer.borderWidth = 1 // 테두리 두께
        textField.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        textField.clipsToBounds = true // 경계에서 벗어난 부분 잘라내기
        
        return textField
    }()
    
    // Password edit button
    public lazy var passwdEditBtn: UIButton = {
        let btn = UIButton()
            
        var configuration = UIButton.Configuration.plain()
        
        // 텍스트 크기를 12로 설정
        let titleAttributes: AttributeContainer = {
            var attributes = AttributeContainer()
            attributes.font = UIFont.systemFont(ofSize: 14)
            attributes.foregroundColor = UIColor.white // 글자 색상을 흰색으로 설정
            return attributes
        }()
        
        configuration.attributedTitle = AttributedString("변경", attributes: titleAttributes)
        configuration.titleAlignment = .center
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 6, bottom: 6, trailing: 5)
        
        btn.configuration = configuration
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.lightGray // 버튼 배경을 회색으로 설정
        
        
        // 테두리 둥글게 만들기
        btn.layer.cornerRadius = 10 // 원하는 둥글기 조절
        btn.layer.borderWidth = 1 // 테두리 두께
        btn.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        btn.clipsToBounds = true // 경계에서 벗어난 부분 잘라내기
        
        return btn
    }()
    
}
