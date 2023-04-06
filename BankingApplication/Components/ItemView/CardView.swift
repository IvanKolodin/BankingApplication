//
//  CardView.swift
//  BankingApplication
//
//  Created by Иван Колодин on 05.04.2023.
//

import SwiftUI

struct CardView: View {
    
    var colors: [Color]
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("BankName")
                    .font(.system(size: 19,
                                  weight: .semibold,
                                  design: .default))
                Spacer()
                HStack {
                    Text("4756 ••••")
                    
                    Spacer()
                    
                    Image("masterCard")
                    
                }
            }
            .padding()
        }
        .frame(width: 242, height: 153)
        .background(LinearGradient(colors: colors,
                                   startPoint: .leading,
                                   endPoint: .trailing))
        .cornerRadius(15)
        .shadow(color: .accentColor.opacity(0.2),
                radius: 5,
                x: 4,
                y: 4)
        
        .padding()
    }
}


