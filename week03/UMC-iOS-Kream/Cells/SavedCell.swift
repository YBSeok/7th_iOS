//
//  SavedTableViewCell.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 10/13/24.
//

import UIKit

import SnapKit

class SavedCell: UITableViewCell {

    static let identifier = "SavedCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setViews()
        self.setConstaints()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.itemImageView.image = nil
        self.itemName.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var itemImageView: UIImageView = {
        let imageView = UIImageView()
        
        /* 주사위 이미지 값은 ViewController에서 작성하게 됩니다. */
        // imageView.image = UIImage(named: "여기에 더미 데이터 값이 들어갑니다.")
        
        return imageView
    }()
    
    private lazy var itemName: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 12)
        name.textColor = UIColor.black
        
        /* 주사위 이름 값은 ViewController에서 작성하게 됩니다. */
        //name.text = "여기에 더미 데이터 값이 들어갑니다."
        
        return name
    }()
    
    private lazy var itemContent: UILabel = {
        let content = UILabel()
        content.font = UIFont.systemFont(ofSize: 9)
        content.textColor = UIColor.gray
        
        /* 주사위 이름 값은 ViewController에서 작성하게 됩니다. */
        //name.text = "여기에 더미 데이터 값이 들어갑니다."
        
        return content
    }()
    
    private lazy var savedIcon: UIImageView = {
        let imageView = UIImageView()
        
        /* 주사위 이름 값은 ViewController에서 작성하게 됩니다. */
        //name.text = "여기에 더미 데이터 값이 들어갑니다."
        
        return imageView
    }()
    
    private lazy var price: UILabel = {
        let price = UILabel()
        price.font = UIFont.systemFont(ofSize: 14)
        price.textColor = UIColor.black
        
        /* 주사위 이름 값은 ViewController에서 작성하게 됩니다. */
        //name.text = "여기에 더미 데이터 값이 들어갑니다."
        
        return price
    }()
    
    private func setViews() {
        self.addSubview(itemImageView)
        self.addSubview(itemName)
        self.addSubview(itemContent)
        self.addSubview(savedIcon)
        self.addSubview(price)
    }
    
    private func setConstaints() {
        itemImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(13)
            $0.left.equalToSuperview().offset(13)
            $0.bottom.equalToSuperview().offset(-10)
            $0.width.height.equalTo(72)
        }
        
        itemName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(13)
            $0.left.equalTo(itemImageView.snp.right).offset(13)
        }
        
        itemContent.snp.makeConstraints {
            $0.top.equalTo(itemName.snp.bottom).offset(1)
            $0.left.equalTo(itemImageView.snp.right).offset(13)
        }
        
        savedIcon.snp.makeConstraints {
            $0.top.equalToSuperview().offset(18)
            $0.right.equalToSuperview().offset(-17)
        }
        
        price.snp.makeConstraints {
            $0.right.equalToSuperview().offset(-17)
            $0.bottom.equalToSuperview().offset(-16)
        }
    }
    
    public func configure(model: SavedModel) {
        self.itemImageView.image = UIImage(named: model.itemImage)
        self.itemName.text = model.itemName
        self.itemContent.text = model.itemContent
        self.price.text = model.price
        self.savedIcon.image = UIImage(named: "save_checked")
    }

}
