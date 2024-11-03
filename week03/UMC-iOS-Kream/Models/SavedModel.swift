//
//  LoginModel.swift
//  UMC-iOS-Kream
//
//  Created by 박준석 on 9/29/24.
//

import Foundation

struct SavedModel {
    let itemImage: String
    let itemName: String
    let itemContent: String
    let savedIcon: String
    let price: String
}

final class dummyItemModel {
    static let itemDatas: [SavedModel] = [
        SavedModel(itemImage: "item1", itemName: "item1", itemContent: "content1", savedIcon: "saved_checked", price: "100000원"),
        SavedModel(itemImage: "item2", itemName: "item2", itemContent: "content2", savedIcon: "saved_checked", price: "200000원"),
        SavedModel(itemImage: "item3", itemName: "item3", itemContent: "content3", savedIcon: "saved_checked", price: "300000원"),
        SavedModel(itemImage: "item4", itemName: "item4", itemContent: "content4", savedIcon: "saved_checked", price: "400000원"),
        SavedModel(itemImage: "item5", itemName: "item5", itemContent: "content5", savedIcon: "saved_checked", price: "500000원"),
        SavedModel(itemImage: "item6", itemName: "item6", itemContent: "content6", savedIcon: "saved_checked", price: "600000원"),
        SavedModel(itemImage: "item7", itemName: "item7", itemContent: "content7", savedIcon: "saved_checked", price: "700000원"),
        SavedModel(itemImage: "item1", itemName: "item8", itemContent: "content8", savedIcon: "saved_checked", price: "800000원"),
        SavedModel(itemImage: "item2", itemName: "item9", itemContent: "content9", savedIcon: "saved_checked", price: "900000원"),
        SavedModel(itemImage: "item3", itemName: "item10", itemContent: "content10", savedIcon: "saved_checked", price: "1000000원"),
        SavedModel(itemImage: "item4", itemName: "item11", itemContent: "content11", savedIcon: "saved_checked", price: "1100000원"),
        SavedModel(itemImage: "item5", itemName: "item12", itemContent: "content12", savedIcon: "saved_checked", price: "1200000원")
    ]
    
}



