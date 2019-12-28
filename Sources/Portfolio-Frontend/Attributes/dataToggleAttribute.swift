//
//  dataToggleAttribute.swift
//  
//
//  Created by Talip Göksu on 28.12.19.
//

import Plot

public extension Node where Context: HTMLContext {
    static func dataToggle(_ toggleName: String) -> Node {
        .attribute(named: "data-toggle", value: toggleName)
    }
}
