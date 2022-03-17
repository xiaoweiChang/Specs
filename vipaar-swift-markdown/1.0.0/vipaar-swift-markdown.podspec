Pod::Spec.new do |s|
    s.name = "vipaar-swift-markdown"
    s.version = "1.0.0"
    s.summary = "Swift Markdown is a Swift package for parsing, building, editing, and analyzing Markdown documents."
    s.homepage = "https://github.com/apple/swift-markdown"
    s.license = { :type => "Apache", :file => "LICENSE.txt" }
    s.author = "Apple"
    s.source = {
        :git => "ssh://git@github.com/apple/swift-markdown.git",
        :commit => "caafc56d3794a08c2203fe417b3aff81e2ab2fc1",
    }
    s.ios.deployment_target = "13.0"
    s.ios.dependency 'vipaar-swift-catomic', '1.0.0'
    s.ios.dependency 'vipaar-swift-cmark-gfm', '1.0.0'
    s.ios.dependency 'vipaar-swift-cmark-gfm-extensions', '1.0.0'
    s.swift_version = '5.0'
    s.requires_arc = true
    s.module_name = "Markdown"
    s.source_files = [
        "Sources/Markdown/**/*.swift",
    ]
    s.preserve_paths = [
        "README.md",
        "LICENSE.txt"
    ]
end