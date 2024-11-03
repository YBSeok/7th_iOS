//
//  ModalViewController.swift
//  UMC-7th-Workbook-2
//
//  Created by 박준석 on 10/6/24.
//

import UIKit

import SnapKit

class SavedViewController: UIViewController {

    let data = dummyItemModel.itemDatas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = savedView
        
    }
    
    private lazy var savedView: SavedView = {
        let view = SavedView()
        view.tableView.dataSource = self
        view.tableView.dataSource = self
        return view
    }()
}


extension SavedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SavedCell.identifier, for: indexPath) as? SavedCell else {
            return UITableViewCell()
        }
        
        cell.configure(model: data[indexPath.row])
        
        return cell
    }
    
}
