//
//  LoginView.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import UIKit

class HomeView: UIView {

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
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            loginLogoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            loginLogoImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            loginLogoImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),
            
            titleLabel.topAnchor.constraint(equalTo: loginLogoImage.bottomAnchor, constant: 87),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),
        ])
    }
    
    // Upper logo image view
    public lazy var loginLogoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "login_logo")
        imageView.contentMode = .scaleAspectFit // 기존 비율 유지
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // Main View address label
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Home View"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
}
