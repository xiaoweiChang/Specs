 Pod::Spec.new do |s|
  s.name         = "vipaar-xmlrpc"
  s.version      = "1.0.2"
  s.summary      = "XMLRPC Library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https://github.com/VIPAAR/ios-xmlrpc.git"
  s.license      = 'Copyright VIPAAR 2013'
  s.author       = 'Marcus Dillavou' 
  s.source       = { :git => "#{s.homepage}", :commit => "770cd79" }
  s.source_files = 'xmlrpc/XML*.{h,m}', 'xmlrpc/NSStringAdditions.{h,m}', 'xmlrpc/NSData*.{h,m}'
  s.requires_arc = true
end

