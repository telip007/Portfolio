//
//  Header.swift
//  
//
//  Created by Talip Göksu on 28.12.19.
//

import Plot

extension Node where Context: HTML.BodyContext {
    static func portfolioHeader(title: String, subtitle: String) -> Self {
        return .header(
            .class("masthead"),
            .div(
                .class("container d-flex h-100 align-items-center"),
                .div(
                    .class("mx-auto text-center"),
                    .img(
                        .class("memoji"),
                        .src("/images/memoji.png")
                    ),
                    .h1(
                        .class("mx-auto my-0 text-uppercase"),
                        .text(title)
                    ),
                    .h2(
                        .class("text-black-50 mx-auto mt-2 mb-5"),
                        .text(subtitle)
                    ),
                    .a(
                        .class("btn btn-primary js-scroll-trigger"),
                        .text("Learn more")
                    )
                )
            )
        )
    }
}
