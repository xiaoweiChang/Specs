 Pod::Spec.new do |s|
  s.name            = "ShowKit"
  s.version         = "0.7.15"
  s.summary         = "ShowKit - framework stored on VIPAAR's dropbox for easy dependency integration"
  s.homepage        = "https+webdav://bzr.vipaar.com"
  s.license         = { :type => 'Commercial', :text => 'Copyright 2013. Curious Minds. All Rights Reserved.' }
  s.author          = 'Curious Minds' 
  s.source          = { :http => 'https://www.dropbox.com/s/uo4fdjakhpbm21y/ShowKit-0.7.15.zip' }
  s.platform        = :ios, '5.0'
  s.source_files    = 'ShowKit.framework/Versions/A/Headers/ShowKit.h'
  s.preserve_paths  = 'ShowKit.framework/*'
  s.requires_arc    = true
  s.xcconfig        = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ShowKit"', 'OTHER_LDFLAGS' => '-lc++' }
  s.frameworks      = 'OpenGLES', 'AVFoundation', 'QuartzCore', 'CFNetwork', 'CoreVideo', 'CoreGraphics', 'CoreMedia', 'AudioToolbox', 'SystemConfiguration', 'ShowKit'
  s.libraries       = 'z', 'resolv'
end
