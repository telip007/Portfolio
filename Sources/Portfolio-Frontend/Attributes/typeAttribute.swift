//
//  typeAttribute.swift
//  
//
//  Created by Talip Göksu on 28.12.19.
//

import Plot

public extension Node where Context: HTMLContext {
    static func type(_ typeName: String) -> Node {
        .attribute(named: "type", value: typeName)
    }
}
