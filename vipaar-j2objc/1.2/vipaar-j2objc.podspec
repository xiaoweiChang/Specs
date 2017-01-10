Pod::Spec.new do |s|
    s.name                      = "vipaar-j2objc"
    s.version                   = "1.2"
    s.summary                   = "J2ObjC"
    s.homepage                  = "http://www.helplightning.com"
    s.license                   = "Copyright (c) 2017 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = { :git => "https://github.com/HaleXie/vipaar-j2objc.git", :branch => "1.2" }
    s.prepare_command           = './download.sh'
    s.preserve_paths            = "distributive", "download.sh"
    s.requires_arc              = true
    s.platform                  = :ios
    s.ios.deployment_target     = '8.0'
    s.vendored_frameworks       = 'JRE', 'Guava', 'JavaxInject', 'JSR305', 'JUnit', 'ProtobufRuntime', 'Xalan'
    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
      'OTHER_LDFLAGS'          => '-licucore'
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
      'OTHER_LDFLAGS'          => '-licucore'
    }
end
