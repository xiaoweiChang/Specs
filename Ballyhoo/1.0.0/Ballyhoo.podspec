 Pod::Spec.new do |s|
  s.name         = "Ballyhoo"
  s.version      = "1.0.0"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https+webdav://bzr.vipaar.com"
  s.license      = 'Copyright VIPAAR 2013'
  s.author       = 'Marcus Dillavou' 
  s.source       = { :bzr => "https+webdav://bzr.vipaar.com/libballyhoo-ios/protocol-2", :tag => "43" }
  s.source_files = 'libballyhoo/*.{h,m}'
  s.requires_arc = true
  s.dependency 'xmlrpc'
end

