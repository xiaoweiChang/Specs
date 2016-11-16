 Pod::Spec.new do |s|
  s.name         = "vipaar-ballyhoo"
  s.version      = "2.2.5"
  s.summary      = "Ballyhoo is a communications library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https+webdav://bzr.vipaar.com"
  s.license      = 'Copyright VIPAAR 2013'
  s.author       = 'Marcus Dillavou' 
  s.source       = { :bzr => "bzr+ssh://bzr.vipaar.com/repos/libballyhoo-ios/2.2.x", :tag => "2.2.5" }
  s.source_files = 'libballyhoo/*.{h,m}'
  s.requires_arc = true
  s.dependency 'vipaar-xmlrpc'
end

