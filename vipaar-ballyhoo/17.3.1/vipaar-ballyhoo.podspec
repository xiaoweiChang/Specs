 Pod::Spec.new do |s|
  s.name         = "vipaar-ballyhoo"
  s.version      = "17.3.1"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https://github.com/VIPAAR/libballyhoo-ios.git"
  s.license      = 'Copyright Helplightning 2022'
  s.author       = 'Help Lightning'
  s.source       = { :git => "ssh://git@github.com/VIPAAR/libballyhoo-ios.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.ios.dependency  'vipaar-rcl', '1.0.3'
  s.ios.dependency  'CocoaZ', '1.4.2'
  s.ios.dependency  'vipaar-xmlrpc', '1.0.4'
  s.ios.dependency  'PromisesObjC', '2.0.0'
  s.ios.dependency  'Realm', '10.41.1'
  s.module_name  = 'HLSDKBallyhoo'
  s.pod_target_xcconfig      = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
    'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
    'OTHER_CFLAGS'           => '-fobjc-arc-exceptions'
  }
  s.ios.deployment_target = '14.0'
  s.default_subspecs = 'Core', 'Galdr', 'Gss', 'Fermata', 'DstributedAuthentication'

  s.subspec 'Core' do |sp|
    sp.source_files = 'libballyhoo/core/**/*.{h,m}'
    sp.private_header_files = ['libballyhoo/core/**/*+Private*.h', 'libballyhoo/core/internal/**/*.h', 'libballyhoo/core/Promise/**/*.h']
  end

  s.subspec 'Galdr' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/galdr/**/*.{h,m}'
    sp.private_header_files = ['libballyhoo/galdr/**/*+Private*.h']
  end

  s.subspec 'Gss' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/gss/**/*.{h,m}'
    sp.private_header_files = ['libballyhoo/gss/**/*+Private*.h', 'libballyhoo/gss/internal/**/*.h']
  end

  s.subspec 'Fermata' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/fermata/**/*.{h,m}'
    sp.private_header_files = ['libballyhoo/fermata/**/*+Private*.h']
  end

  s.subspec 'DstributedAuthentication' do |sp|
    sp.dependency 'vipaar-ballyhoo/Core'
    sp.source_files = 'libballyhoo/dstributedAuthentication/**/*.{h,m}'
    sp.private_header_files = ['libballyhoo/dstributedAuthentication/**/*+Private*.h']
  end
  
 end

