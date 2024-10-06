//
//  ModalViewController.swift
//  UMC-7th-Workbook-2
//
//  Created by 박준석 on 10/6/24.
//

import UIKit

import SnapKit

class ManageProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = manageProfileView
        self.navigationItem.title = "프로필 관리"
    }
    
    private lazy var manageProfileView: ManageProfileView = {
        let view = ManageProfileView()
        return view
    }()
}
