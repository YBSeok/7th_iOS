//
//  ModalViewController.swift
//  UMC-7th-Workbook-2
//
//  Created by 박준석 on 10/6/24.
//

import UIKit

import SnapKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
        
    }
    
    private lazy var homeView: HomeView = {
        let view = HomeView()
        return view
    }()

}
