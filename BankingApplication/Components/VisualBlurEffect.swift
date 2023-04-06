//
//  VisualBlurEffect.swift
//  BankingApplication
//
//  Created by Иван Колодин on 06.04.2023.
//

import SwiftUI

struct VisualBlurEffect: UIViewRepresentable {
    
    var uiVisualEffect: UIVisualEffect?
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        UIVisualEffectView()
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) {
        uiView.effect = uiVisualEffect
    }
    
}
