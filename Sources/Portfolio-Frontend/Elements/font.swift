//
//  font.swift
//  
//
//  Created by Talip Göksu on 18.12.19.
//

import Foundation
import Plot

enum Font: String {
    case fontAwesome = "Vendor/fontawesome-free/css/all.min.css"
    case googleFontVarela = "https://fonts.googleapis.com/css?family=Varela+Round"
    case googleFontNunito = "https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
}

public extension Node where Context == HTML.HeadContext {
    static internal func font(_ font: Font) -> Node {
        .stylesheet(font.rawValue)
    }
}

internal func getFonts() -> [Font] {
    return [.fontAwesome, .googleFontNunito, .googleFontVarela]
}
