 Pod::Spec.new do |s|
  s.name            = "vipaar-libyuv"
  s.version         = "1.0.0"
  s.summary         = "libyuv - compiled and stored on VIPAAR's dropbox for easy  dependency integration"
  s.homepage        = "https+webdav://bzr.vipaar.com"
  s.license         = { :type => 'BSD', :text => 'Copyright 2011. The LibYuv Project Authors. All Rights Reserved.' }
  s.author          = 'The LibYuv Project Authors' 
  s.source          = { :http => 'https://www.dropbox.com/s/gw5p85qemquujdk/libyuv.zip' }
  s.platform        = :ios
  s.source_files    = 'libyuv.h'
  s.preserve_paths  = 'libyuv.a'
  s.library         = 'yuv'
  s.requires_arc    = true
  s.xcconfig        = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-libyuv"' }
end
