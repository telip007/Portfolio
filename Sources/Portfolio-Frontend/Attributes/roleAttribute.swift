//
//  roleAttribute.swift
//  
//
//  Created by Talip Göksu on 15.12.19.
//

import Plot

public extension Node where Context: HTMLContext {
    static func role(_ roleName: String) -> Node {
        .attribute(named: "class", value: roleName)
    }
}
