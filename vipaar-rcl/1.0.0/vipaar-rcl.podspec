Pod::Spec.new do |s|
    s.name                      = "vipaar-rcl"
    s.version                   = "1.0.0"
    s.summary                   = "Reliable Connection Layer"
    s.homepage                  = "https://github.com/VIPAAR/librcl"
    s.license                   = "Copyright (c) 2016 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = { :git => "#{s.homepage}.git", :branch => "master" }
    s.source_files              = "ios/src/**/*.{h,m}"
    s.requires_arc              = true
    s.ios.deployment_target     = '8.0'
    s.framework                 = 'j2objc'
    s.pod_target_xcconfig       = {
      'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Distributive/lib"',
      'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Distributive/include"',
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Frameworks"'
    }
    s.user_target_xcconfig      = {
      'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Distributive/lib"',
      'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Distributive/include"',
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/J2ObjC-Framework/Frameworks"'
    }
    s.header_mappings_dir       = 'ios/src'
    s.ios.dependency            "J2ObjC-Framework", '~> 0.9.8.2.2'
end
