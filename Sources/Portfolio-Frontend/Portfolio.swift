import Plot

public func getHtml() -> String {
    // TODO: Extract Components
    let html = HTML(
        .head(
            .title("Talip Goeksu"),
            .meta(.charset(.utf8)),
            .viewport(.accordingToDevice, initialScale: 1),
            .forEach(getStyleSheets()) {
                .stylesheet($0)
            },
            .forEach(getFonts()) {
                .font($0)
            }
        ),
        .body(
            .class("text-center"),
            .div(
                .class("cover-container d-flex w-100 h-100 p-3 mx-auto flex-column"),
                .header(
                    .class("masthead mb-auto"),
                    .div(
                        .class("inner"),
                        .h3(.class("masthead-brand"), "Talip Goeksu"),
                        .nav(
                            .class("nav nav-masthead justify-content-center"),
                            .a(
                                .class("nav-link active"),
                                .href("#"),
                                "Home"
                            )
                        )
                    )
                ),
                .main(
                    .role("main"),
                    .class("inner cover"),
                    .h1(.class("cover-heading"), "Hi, I'm Talip 👋"),
                    .p(.class("lead"), "I'm a part time iOS developer and currently study computer science at the Karlsruhe Institute of Technology in 🇩🇪.")
                ),
                .footer(.class("mastfoot mt-auto"))
            )
        )
    )
    return html.render()
}
