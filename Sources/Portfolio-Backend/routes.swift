//
//  routes.swift
//  
//
//  Created by Talip Göksu on 15.12.19.
//

import Portfolio_Frontend
import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get { req in
        return HTTPResponse(status: .ok, headers: ["Content-Type": "text/html"], body: Portfolio_Frontend.getHtml())
    }
}
