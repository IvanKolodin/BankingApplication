//
//  CardModel.swift
//  BankingApplication
//
//  Created by Иван Колодин on 05.04.2023.
//

import SwiftUI

struct CardModel: Identifiable{
    var id = UUID().uuidString
    var colors: [Color]
    
    static let colors: [CardModel] = [
        CardModel(colors: [Colors.greenYellow, Colors.aqua]),
        CardModel(colors: [Colors.mediumSlateBlue, Colors.aqua]),
        CardModel(colors: [Colors.pink, Colors.aqua]),
        CardModel(colors: [Colors.blue, Colors.aqua])
    ]
}
