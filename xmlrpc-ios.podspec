 Pod::Spec.new do |s|
  s.name         = "xmlrpc-ios"
  s.version      = "1.0.0"
  s.summary      = "XMLRPC Library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https+webdav://bzr.vipaar.com"
  s.license      = 'Copyright VIPAAR 2013'
  s.author       =  'Marcus Dillavou' 
  s.source       = { :bzr => "https+webdav://bzr.vipaar.com/ios-xmlrpc/master", :tag => "3" }
  s.source_files = 'xmlrpc/XML*.{h,m}', 'xmlrpc/NSStringAdditions.{h,m}', 'xmlrpc/NSData*.{h,m}'
  s.requires_arc = true
end

