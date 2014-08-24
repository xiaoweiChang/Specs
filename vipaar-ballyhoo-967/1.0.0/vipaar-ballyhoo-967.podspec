 Pod::Spec.new do |s|
  s.name         = "vipaar-ballyhoo-967"
  s.version      = "1.0.0"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https+webdav://bzr.vipaar.com"
  s.license      = 'Copyright VIPAAR 2013'
  s.author       = 'Marcus Dillavou' 
  s.source       = { :bzr => "https+webdav://bzr.vipaar.com/users/patrick.childers/libballyhoo-ios/fix-967" }
  s.source_files = 'libballyhoo/*.{h,m}'
  s.requires_arc = true
  s.dependency 'vipaar-xmlrpc'
end

