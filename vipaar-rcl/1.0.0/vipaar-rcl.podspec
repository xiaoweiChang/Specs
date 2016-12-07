Pod::Spec.new do |s|
    s.name                      = "vipaar-rcl"
    s.version                   = "1.0.0"
    s.summary                   = "Reliable Connection Layer"
    s.homepage                  = "https://github.com/VIPAAR/librcl"
    s.license                   = "Copyright (c) 2016 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = { :git => "#{s.homepage}.git", :tag => "#{s.version}" }
    s.source_files              = "ios/src/**/*.{h,m}"
    s.requires_arc              = true
    s.ios.deployment_target     = '8.0'
    s.pod_target_xcconfig       = {
      'OTHER_LDFLAGS' => '-ljre_emul',
      'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Distributive/lib"',
      'USER_HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Distributive/include"',
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Frameworks"'
    }
    s.header_mappings_dir       = 'ios/src'
    s.ios.dependency            "J2ObjC-Framework", '~> 0.9.8.2.2'
end
