Pod::Spec.new do |s|
    s.name = "apple-swift-catomic"
    s.version = "1.0.0"
    s.summary = "CAtomic"
    s.homepage = "https://github.com/apple/swift-markdown"
    s.license = { :type => "Apache", :file => "LICENSE.txt" }
    s.author = "Apple"
    s.source = {
        :git => "ssh://git@github.com/apple/swift-markdown.git",
        :commit => "caafc56d3794a08c2203fe417b3aff81e2ab2fc1",
    }
    s.ios.deployment_target = "13.0"
    s.swift_version = '5.0'
    s.requires_arc = true
    s.module_name = "CAtomic"
    s.source_files = [
        "Sources/CAtomic/**/*.{h,c}"
    ]
    s.preserve_paths = [
        "README.md",
        "LICENSE.txt"
    ]
end