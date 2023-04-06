//
//  CategoryModel.swift
//  BankingApplication
//
//  Created by Иван Колодин on 06.04.2023.
//

import Foundation

struct CategoryModel: Identifiable {
    let id = UUID().uuidString
    
    let title: String
    let color: String
    let percent: Int
    
    static let categories = [
        CategoryModel(title: "Goods",
                      color: "GoodsCard",
                      percent: 45),
        CategoryModel(title: "Transport",
                      color: "TransportCard",
                      percent: 30),
        CategoryModel(title: "Education",
                      color: "EducationCard",
                      percent: 15),
        CategoryModel(title: "Other",
                      color: "Other",
                      percent: 10)
    ]
}

