//
//  NavBar.swift
//  
//
//  Created by Talip Göksu on 18.12.19.
//

import Plot

extension Node where Context: HTML.BodyContext {
    static func navBar(_ title: String, menuPoints: (href: String, name: String)...) -> Self {
        return .nav(
            .id("mainNav"),
            .class("navbar navbar-expand-lg navbar-light fixed-top"),
            .div(
                .class("container"),
                .a(
                    .class("navbar-brand js-scroll-trigger"),
                    .href("#page-top"),
                    .text(title)
                ),
                .button(
                    .class("navbar-toggler navbar-toggler-right collapsed"),
                    .type("button"),
                    .dataToggle("collapse"),
                    .dataTarget("#navbarResponsive"),
                    .ariaControls("navbarResponsive"),
                    .ariaExpanded(false),
                    .ariaLabel("Toggle navigation"),
                    .i(.class("fas fa-bars"))
                ),
                .div(
                    .id("navbarResponsive"),
                    .class("navbar-collapse collapse"),
                    .ul(
                        .class("navbar-nav ml-auto"),
                        .forEach(menuPoints) { menuPoint in
                            .li(
                                .class("nav-item"),
                                .a(
                                    .class("nav-link js-scroll-trigger"),
                                    .href(menuPoint.href),
                                    .text(menuPoint.name)
                                )
                            )
                        }
                    )
                )
            )
        )
    }
}
