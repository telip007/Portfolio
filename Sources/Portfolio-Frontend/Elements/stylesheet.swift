//
//  styleSheet.swift
//  
//
//  Created by Talip Göksu on 15.12.19.
//

import Plot

enum StyleSheet: String {
    case bootstrapCore = "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    case coverTemplate = "https://getbootstrap.com/docs/4.4/examples/cover/cover.css"
}

public extension Node where Context == HTML.HeadContext {
    static internal func stylesheet(_ styleSheet: StyleSheet) -> Node {
        .stylesheet(styleSheet.rawValue)
    }
}
