import Plot

public func getHtml() -> String {
    let html = HTML(
        // MARK: - Head
        .head(
            .title("Talip Göksu - iOS Developer"),
            .meta(.charset(.utf8)),
            .viewport(.accordingToDevice, initialScale: 1),
            .forEach(getStyleSheets()) {
                .stylesheet($0)
            },
            .forEach(getFonts()) {
                .font($0)
            }
        ),

        // MARK: - Body
        .body(
            .id("page-top"),
            // MARK: Nav Bar
            .navBar("Talip Göksu", menuPoints: ("#about-me", "About Me"), ("#projects", "Projects"), ("#contact-me", "Contact Me")),

            // MARK: Header
            .portfolioHeader(title: "Hey there!",
                             subtitle: "My name is Talip. A CS student from 🇩🇪 and part-time iOS developer."),

            // MARK: Bootstrap core JavaScript
            .script(.src("Vendor/jquery/jquery.min.js")),
            .script(.src("Vendor/bootstrap/js/bootstrap.bundle.min.js")),

            // MARK: Plugin JavaScript
            .script(.src("Vendor/jquery-easing/jquery.easing.min.js")),

            // MARK: Custom scripts for this template
            .script(.src("js/grayscale.min.js"))
        )
    )
    return html.render()
}
