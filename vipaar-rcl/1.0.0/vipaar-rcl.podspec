Pod::Spec.new do |s|
    s.name                      = "vipaar-rcl"
    s.version                   = "1.0.0"
    s.summary                   = "Reliable Connection Layer"
    s.homepage                  = "https://github.com/VIPAAR/librcl"
    s.license                   = "Copyright (c) 2016 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = { :git => "https://github.com/VIPAAR/librcl.git", :tag => "#{s.version}"}
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
    s.ios.dependency              "vipaar-cmf", '1.0.0'
end
