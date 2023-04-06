//
//  CategoryDetailView.swift
//  BankingApplication
//
//  Created by Иван Колодин on 06.04.2023.
//

import SwiftUI

struct CategoryDetailView: View {
    
    var item: CategoryModel
    
    var body: some View{
        return Color.clear.overlay(
            VStack {
                Text(item.title)
                    .font(.title)
                Spacer()
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray.opacity(0.1))
                        .frame(width: 260)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(item.color))
                        .frame(width: CGFloat(item.percent) * 2.6)
                }
                .frame(height: 30)
            }
            .padding()
            .frame(width: 300, height: 300)
            .background(.white)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .contentShape(RoundedRectangle(cornerRadius: 10))
        .frame(width: 300, height: 300)
    }
}
