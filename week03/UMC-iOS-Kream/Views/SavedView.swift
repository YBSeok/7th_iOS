//
//  SavedView.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 10/13/24.
//

import UIKit

import SnapKit

class SavedView: UIView {
    override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .white
            setViews()
            setConstaints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private lazy var title: UILabel = {
            let label = UILabel()
            label.text = "SAVED"
            label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            label.textColor = UIColor.black
            return label
        }()
        
        public lazy var tableView: UITableView = {
            let table = UITableView()
            table.register(SavedCell.self, forCellReuseIdentifier: SavedCell.identifier)
            table.separatorStyle = .singleLine
            return table
        }()
        
        private func setViews() {
            self.addSubview(title)
            self.addSubview(tableView)
        }
        
        private func setConstaints() {
            title.snp.makeConstraints {
                $0.top.equalToSuperview().offset(61)
                $0.left.equalToSuperview().offset(10)
                $0.height.equalTo(45)
            }
            
            tableView.snp.makeConstraints {
                $0.top.equalTo(title.snp.bottom).offset(16)
                $0.left.right.bottom.equalToSuperview()
            }
        }
    }
