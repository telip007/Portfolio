//
//  styleSheet.swift
//  
//
//  Created by Talip Göksu on 15.12.19.
//

import Plot

enum StyleSheet: String {
    case bootstrapCore = "Resources/Vendor/bootstrap/css/bootstrap.min.css"
    case graysclale = "Resources/grayscale.min.css"
}

public extension Node where Context == HTML.HeadContext {
    static internal func stylesheet(_ styleSheet: StyleSheet) -> Node {
        .stylesheet(styleSheet.rawValue)
    }
}

internal func getStyleSheets() -> [StyleSheet] {
    return [.bootstrapCore, .graysclale]
}
