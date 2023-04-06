//
//  ContentView.swift
//  BankingApplication
//
//  Created by Иван Колодин on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Tab = .house
    @State var selectedItem: CategoryModel? = nil
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        switch selectedTab {
                        case .house:
                            HomeView(selectedItem: $selectedItem)
                                .edgesIgnoringSafeArea(.bottom)
                        case .creditcard:
                            SendView()
                        case .gearshape:
                            SettingsView()
                        }
                    }
                }
            }
            VStack {
                Spacer()
//                if selectedItem == nil {
                    CustomTabBar(selectedTab: $selectedTab)
//                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
