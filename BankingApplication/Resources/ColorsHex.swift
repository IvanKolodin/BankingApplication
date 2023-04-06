//
//  ColorsHex.swift
//  BankingApplication
//
//  Created by Иван Колодин on 05.04.2023.
//
import SwiftUI

extension Color {
    init(hex3: UInt16, opacity: Double = 1) {
        let divisor = Double(0x0F)
        let red = Double((hex3 & 0xF00) >> 8) / divisor
        let green = Double((hex3 & 0x0F0) >> 4) / divisor
        let blue = Double(hex3 & 0x00F) / divisor
        
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
    
    init(hex4: UInt16) {
        let divisor = Double(0x0F)
        let red = Double((hex4 & 0xF000) >> 12) / divisor
        let green = Double((hex4 & 0x0F00) >> 8) / divisor
        let blue = Double((hex4 & 0x00F0) >> 4) / divisor
        let opacity = Double(hex4 & 0x000F) / divisor
        
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
    
    init(hex6: UInt32, opacity: Double = 1) {
        let divisor = Double(0xFF)
        let red = Double((hex6 & 0xFF0000) >> 16) / divisor
        let green = Double((hex6 & 0x00FF00) >> 8) / divisor
        let blue = Double(hex6 & 0x0000FF) / divisor
        
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
    
    init(hex8: UInt32) {
        let divisor = Double(0xFF)
        let red = Double((hex8 & 0xFF000000) >> 24) / divisor
        let green = Double((hex8 & 0x00FF0000) >> 16) / divisor
        let blue = Double((hex8 & 0x0000FF00) >> 8) / divisor
        let opacity = Double(hex8 & 0x000000FF) / divisor
        
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
    
    init(hex: String) {
        let hexString = hex.replacingOccurrences(of: "#", with: "")
        
        var intValue: UInt64 = 0
        
        let scanner = Scanner(string: hexString)
        scanner.scanHexInt64(&intValue)
        
        switch hexString.count {
        case 3:
            self.init(hex3: UInt16(intValue))
        case 4:
            self.init(hex4: UInt16(intValue))
        case 6:
            self.init(hex6: UInt32(intValue))
        case 8:
            self.init(hex8: UInt32(intValue))
        default:
            self.init(red: 0, green: 0, blue: 0)
        }
    }
}
