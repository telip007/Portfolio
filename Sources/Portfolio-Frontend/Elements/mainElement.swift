//
//  mainElement.swift
//  
//
//  Created by Talip Göksu on 15.12.19.
//

import Plot

extension Node where Context: HTML.BodyContext {
    static func main(_ nodes: Node<HTML.BodyContext>...) -> Self {
        return .element(named: "main", nodes: nodes)
    }
}
