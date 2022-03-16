Pod::Spec.new do |s|
    s.name = "apple-swift-markdown"
    s.version = "1.0.0"
    s.summary = "Swift Markdown is a Swift package for parsing, building, editing, and analyzing Markdown documents."
    s.homepage = "https://github.com/apple/swift-markdown"
    s.license = { :type => "Apache", :file => "LICENSE.txt" }
    s.author = "Apple"
    s.source = {
        :git => "https://github.com/apple/swift-markdown.git",
        :tag => "swift-5.6-RELEASE",
        :submodules => true
    }
    s.ios.deployment_target = "13.0"
    s.tvos.deployment_target = "13.0"
    s.osx.deployment_target = "10.15"
    s.swift_version = '5.0'
    s.requires_arc = true
    s.module_name = "Markdown"
    s.source_files = [
        "Sources/Markdown/**/*.swift",
        "Sources/CAtomic/**/*.{h,c}",
        "swift-cmark/src/**/*.{h,c}",
        "swift-cmark/extensions/**/*.{h,c}",
    ]
    s.preserve_paths = [
        "README.md",
        "swift-cmark/src/*.inc",
        "swift-cmark/COPYING",
        "swift-cmark/README.md",
    ]
    s.pod_target_xcconfig = {
        'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'SWIFT_MARKDOWN_COCOA_PODS'
    }
end