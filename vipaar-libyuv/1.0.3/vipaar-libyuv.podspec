 Pod::Spec.new do |s|
  s.name            = "vipaar-libyuv"
  s.version         = "1.0.3"
  s.summary         = "libyuv - compiled and stored on VIPAAR's dropbox for easy  dependency integration"
  s.homepage        = "https://chromium.googlesource.com/libyuv/libyuv"
  s.license         = { :type => 'BSD', :text => 'Copyright 2011. The LibYuv Project Authors. All Rights Reserved.' }
  s.author          = 'The LibYuv Project Authors' 
  s.source          = { :git => 'https://chromium.googlesource.com/libyuv/libyuv', :commit => '85722f5'}
  s.platform        = :ios
  s.libraries       = 'c++'
  s.source_files    = 'source/*.cc'
  s.header_dir = 'include'
  s.header_mappings_dir = 'include'
  s.pod_target_xcconfig       = {
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-libyuv/include"'
    }
    s.user_target_xcconfig      = {
#      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-libyuv/include"'
    }


end
