//
//  CustomTabBar.swift
//  BankingApplication
//
//  Created by Иван Колодин on 13.04.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case creditcard
    case gearshape
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage: tab.rawValue)
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? .accentColor: .gray)
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.white)
            .cornerRadius(20)
            .padding()
        }
    }
}
