//
//  ColorEx.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

extension Color {

    static let gray0 = Color(hex: "#5B5B5B")
    static let gray1 = Color(hex: "#797979")
    static let gray2 = Color(hex: "#9F9F9F")
    static let gray3 = Color(hex: "#C4C4C4")
    static let gray4 = Color(hex: "F3F3F3")
    static let Main = Color(hex: "#0094FF")
    static let blue0 = Color(hex: "#E7F5FF")
    static let BackgroundColor = Color(hex: "#FAFAFA")
    static let Background = Color(hex: "FCFCFC")
}

extension Color {
  init(hex: String) {
      let scanner = Scanner(string: hex)
         _ = scanner.scanString("#")
         
         var rgb: UInt64 = 0
         scanner.scanHexInt64(&rgb)
         
         let r = Double((rgb >> 16) & 0xFF) / 255.0
         let g = Double((rgb >>  8) & 0xFF) / 255.0
         let b = Double((rgb >>  0) & 0xFF) / 255.0
         self.init(red: r, green: g, blue: b)

      
  }
}
