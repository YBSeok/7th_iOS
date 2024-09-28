//
//  LoginView.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import UIKit

class LoginView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {
        self.addSubview(loginLogoImage)
        
        self.addSubview(emailLabel)
        self.addSubview(emailTextfield)
        self.addSubview(pwdLabel)
        self.addSubview(pwdTextfield)
        self.addSubview(loginBtn)
        
        self.addSubview(kakaoLoginBtn)
        self.addSubview(appleLoginBtn)
        
        NSLayoutConstraint.activate([
            loginLogoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            loginLogoImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            loginLogoImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),
            
            emailLabel.topAnchor.constraint(equalTo: loginLogoImage.bottomAnchor, constant: 87),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            
            emailTextfield.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextfield.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailTextfield.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
            pwdLabel.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 17),
            pwdLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            
            pwdTextfield.topAnchor.constraint(equalTo: pwdLabel.bottomAnchor, constant: 8),
            pwdTextfield.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            pwdTextfield.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
            loginBtn.topAnchor.constraint(equalTo: pwdTextfield.bottomAnchor, constant: 17),
            loginBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            loginBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
            kakaoLoginBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 87),
            kakaoLoginBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            kakaoLoginBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
            appleLoginBtn.topAnchor.constraint(equalTo: kakaoLoginBtn.bottomAnchor, constant: 22),
            appleLoginBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            appleLoginBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
        ])
    }
    
    // 버튼 내부 텍스트 폰트 지정 컨테이너
       private lazy var titleContainer: AttributeContainer = {
           var container = AttributeContainer()
           container.font = UIFont.systemFont(ofSize: 13, weight: .bold)
           container.foregroundColor = UIColor.black
           return container
       }()
    
     
    // Upper logo image view
    public lazy var loginLogoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "login_logo")
        imageView.contentMode = .scaleAspectFit // 기존 비율 유지
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // Email address label
    public lazy var emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "이메일 주소"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // Email text field
    public lazy var emailTextfield: UITextField = {
        let textField = PaddedTextField(padding: UIEdgeInsets(top: 9, left: 16, bottom: 9, right: 16))
        
        // 플레이스홀더 텍스트 설정
        let placeholderText = "예) kream@kream.co.kr"
            
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
    
    // Password label
    public lazy var pwdLabel: UILabel = {
        let label = UILabel()
            
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // Password text field
    public lazy var pwdTextfield: UITextField = {
        let textField = PaddedTextField(padding: UIEdgeInsets(top: 9, left: 16, bottom: 9, right: 16))
            
        // 플레이스홀더 텍스트 설정
        let placeholderText = "비밀번호를 입력해주세요"
            
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
    
    // Login button
    public lazy var loginBtn: UIButton = {
        let btn = UIButton()
            
        var configuration = UIButton.Configuration.plain()
        
        // 텍스트 크기를 14로 설정
        let titleAttributes: AttributeContainer = {
            var attributes = AttributeContainer()
            attributes.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            attributes.foregroundColor = UIColor.white // 글자 색상을 흰색으로 설정
            return attributes
        }()
        
        configuration.attributedTitle = AttributedString("로그인", attributes: titleAttributes)
        configuration.titleAlignment = .center
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 9, leading: 11, bottom: 9, trailing: 11)
        
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
    
    // Social login button (kakao)
    public lazy var kakaoLoginBtn: UIButton = {
        let btn = UIButton()
            
        var configuration = UIButton.Configuration.plain()
        
        // Kakao logo image
        configuration.image = UIImage(named: "kakao_logo")
        configuration.imagePadding = 5
        
        configuration.attributedTitle = AttributedString("카카오로 로그인", attributes: titleContainer)
        configuration.titleAlignment = .center
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 11, leading: 12, bottom: 11, trailing: 12)
        
        btn.configuration = configuration
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        // 테두리 둥글게 만들기
        btn.layer.cornerRadius = 10 // 원하는 둥글기 조절
        btn.layer.borderWidth = 1 // 테두리 두께
        btn.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        btn.clipsToBounds = true // 경계에서 벗어난 부분 잘라내기
        
        return btn
    }()
    
    // Social login button (apple)
    public lazy var appleLoginBtn: UIButton = {
        let btn = UIButton()
            
        var configuration = UIButton.Configuration.plain()
        
        // Apple logo image
        configuration.image = UIImage(named: "apple_logo")
        configuration.imagePadding = 5
        configuration.titlePadding = 11
        
        configuration.attributedTitle = AttributedString("Apple로 로그인", attributes: titleContainer)
        configuration.titleAlignment = .center
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 11, leading: 12, bottom: 11, trailing: 12)
        
        btn.configuration = configuration
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        // 테두리 둥글게 만들기
        btn.layer.cornerRadius = 10 // 원하는 둥글기 조절
        btn.layer.borderWidth = 1 // 테두리 두께
        btn.layer.borderColor = UIColor.lightGray.cgColor // 테두리 색상
        btn.clipsToBounds = true // 경계에서 벗어난 부분 잘라내기
        
        return btn
    }()
}

class PaddedTextField: UITextField {
    var padding: UIEdgeInsets

    // 패딩 값 초기화
    init(padding: UIEdgeInsets) {
        self.padding = padding
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        self.padding = UIEdgeInsets(top: 9, left: 16, bottom: 9, right: 16) // 기본 패딩 값
        super.init(coder: coder)
    }

    // 텍스트 영역에 패딩 적용
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    // 편집 영역에 패딩 적용
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
