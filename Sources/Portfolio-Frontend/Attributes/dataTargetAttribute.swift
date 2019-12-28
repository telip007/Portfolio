//
//  dataTargetAttribute.swift
//  
//
//  Created by Talip Göksu on 28.12.19.
//

import Plot

public extension Node where Context: HTMLContext {
    static func dataTarget(_ targetName: String) -> Node {
        .attribute(named: "data-target", value: targetName)
    }
}
