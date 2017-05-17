 Pod::Spec.new do |s|
  s.name         = "vipaar-ballyhoo"
  s.version      = "4.0.2"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https+webdav://bzr.vipaar.com"
  s.license      = 'Copyright VIPAAR 2017'
  s.author       = 'Marcus Dillavou' 
  s.source       = { :bzr => "bzr+ssh://bzr.vipaar.com/repos/libballyhoo-ios/4.0.x", :tag => "4.0.2" }
  s.source_files = 'libballyhoo/**/*.{h,m}'
  s.requires_arc = true
  s.ios.dependency  'vipaar-rcl', '1.0.0'
  s.ios.dependency  'CocoaZ', '1.4.2'
  s.dependency      'vipaar-xmlrpc'
  s.pod_target_xcconfig      = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
    'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
    'OTHER_CFLAGS'           => '-fobjc-arc-exceptions'
  }
  s.ios.deployment_target = '8.0'
end

