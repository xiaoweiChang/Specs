 Pod::Spec.new do |s|
  s.name         = "vipaar-ballyhoo"
  s.version      = "15.3.1"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https://github.com/VIPAAR/libballyhoo-ios.git"
  s.license      = 'Copyright Helplightning 2022'
  s.author       = 'Help Lightning'
  s.source       = { :git => "ssh://git@github.com/VIPAAR/libballyhoo-ios.git", :tag => "#{s.version}" }
  s.source_files = 'libballyhoo/**/*.{h,m}'
  s.requires_arc = true
  s.ios.dependency  'vipaar-rcl', '1.0.3'
  s.ios.dependency  'CocoaZ', '1.4.2'
  s.ios.dependency  'vipaar-xmlrpc'
  s.ios.dependency  'PromisesObjC', '2.0.0'
  s.module_name  = 'HLLibBallyhoo'
  s.pod_target_xcconfig      = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
    'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
    'OTHER_CFLAGS'           => '-fobjc-arc-exceptions'
  }
  s.ios.deployment_target = '12.0'

  s.default_subspecs = 'Core', 'Galdr', 'Gss', 'Fermata', 'DstributedAuthentication'

  s.subspec 'Core' do |sp|
    sp.source_files = 'libballyhoo/core/**/*.{h,m}'
  end

  s.subspec 'Galdr' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/galdr/**/*.{h,m}'
  end

  s.subspec 'Gss' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/gss/**/*.{h,m}'
  end

  s.subspec 'Fermata' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/Fermata/**/*.{h,m}'
  end

    s.subspec 'DstributedAuthentication' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/dstributedAuthentication/**/*.{h,m}'
  end
  
 end

