Pod::Spec.new do |s|
    s.name                      = "vipaar-rcl"
    s.version                   = "1.0.2.librcl-16"
    s.summary                   = "Reliable Connection Layer"
    s.homepage                  = "https://github.com/VIPAAR/librcl"
    s.license                   = "Copyright (c) 2016 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = { :git => "ssh://git@github.com/HaleXie/librcl.git", :commit => "4d679430ae4e3641b9e1bd9c2e18f78fef5b0a7b"}
    s.source_files              = "ios/src/**/*.{h,m}"
    s.requires_arc              = true
    s.ios.deployment_target     = '8.0'
    s.framework                 = 'JRE'
    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
      'OTHER_CFLAGS'           => '-fobjc-arc-exceptions'
    }
    s.header_mappings_dir       = 'ios/src'
    s.ios.dependency              "vipaar-j2objc", '1.2'
    s.ios.dependency              "vipaar-cmf", '1.0.2'
end
