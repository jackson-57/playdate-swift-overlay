# Playdate Swift Overlay

An expanded overlay for Swift development on Playdate

## Why Swift for Playdate

The [Playdate](https://play.date) is a tiny handheld gaming console developed by [Panic](https://panic.com) featuring a Cortex M7 processor and a 400 by 240 1-bit display. Panic provides an SDK for building Playdate games in both C and Lua and is equipped with a Playdate Simulator. 

Most Playdate games are traditionally written in Lua for ease of development, but can run into performance problems that necessitate the added complexity of using C.

Embedded Swift solves this problem by pairing high-level ergonomics with low-level performance, while also providing memory safety guarantees which improve productivity and eliminate a common sources of bugs. 

## Why a fork?
While Apple's work on Swift Embedded and their example implementation for Playdate has made Swift possible on the Playdate (and we're greatly appreciative of it!), the Swift overlay (wrapping/binding) for the Playdate C API is incomplete, and the maintainer [has stated](https://github.com/apple/swift-playdate-examples/blob/main/README.md#contributing-to-swift-playdate-examples) that they're not interested in accepting contributions around the overlay. There's been a ton of interest from both the Playdate community and from Panic for Swift on Playdate, so I'm hoping that this repository can serve as a space for interested community members to contribute to those bindings.

I ([@jackson-57](https://github.com/jackson-57)) am new to Swift, but I'm very interested in learning the language to use on the Playdate. I'd like to contribute to the bindings as I learn Swift, but pull requests are encouraged if you'd like to help expand the API.

Do note that until we've gotten our own package and wiki set up, the links below point to Apple's example project.

## Getting Started

To start using Swift with the Playdate SDK, you can find guides, articles, and API documentation via the [Package's documentation on the Web][docs] or in Xcode.

- [Exploring the Examples](https://github.com/apple/swift-playdate-examples/wiki/Exploring-the-Examples)
- [Downloading the Tools](https://github.com/apple/swift-playdate-examples/wiki/Downloading-the-Tools)
- [Building the Examples](https://github.com/apple/swift-playdate-examples/wiki/Building-the-Examples)
- [Creating Your Own Game](https://github.com/apple/swift-playdate-examples/wiki/Creating-Your-Own-Game)

> Disclaimer: The examples included in this repository are not reference implementations for creating games.

[docs]: https://github.com/apple/swift-playdate-examples/wiki

### Code of Conduct

As with the official Swift Playdate Examples project, we would like this project to foster a diverse and friendly community. We expect contributors to adhere the [Swift.org Code of Conduct](https://swift.org/code-of-conduct/). A copy of this document is [available in this repository][coc].

[coc]: CODE_OF_CONDUCT.md

### Contact information

The current code owner of this package is Rauhul Varma ([@rauhul](https://github.com/rauhul)). You can contact him [on the Swift forums](https://orums.swift.org/u/rauhul/summary).

In case of moderation issues, you can also directly contact a member of the [Swift Core Team](https://swift.org/community/#community-structure).
