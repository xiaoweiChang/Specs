 Pod::Spec.new do |s|
  s.name         = "vipaar-ballyhoo"
  s.version      = "13.99.1.4"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https://github.com/VIPAAR/libballyhoo-ios.git"
  s.license      = 'Copyright Helplightning 2020'
  s.author       = 'Help Lightning' 
  s.source       = { :git => "#{s.homepage}", :tag => "#{s.version}" }
  s.source_files = 'libballyhoo/**/*.{h,m}'
  s.requires_arc = true
  s.ios.dependency  'vipaar-rcl', '1.0.2'
  s.ios.dependency  'CocoaZ', '1.4.2'
  s.dependency      'vipaar-xmlrpc'
  s.pod_target_xcconfig      = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
    'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
    'OTHER_CFLAGS'           => '-fobjc-arc-exceptions'
  }
  s.ios.deployment_target = '9.0'

  s.default_subspecs = 'Core', 'Galdr', 'Gss', 'Fermata'
  
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
end

