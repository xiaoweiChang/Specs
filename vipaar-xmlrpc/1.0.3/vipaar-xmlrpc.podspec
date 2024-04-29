 Pod::Spec.new do |s|
  s.name         = "vipaar-xmlrpc"
  s.version      = "1.0.3-Beta"
  s.summary      = "XMLRPC Library exclusively for use in the VIPAAR iOS application"
  s.homepage     = "https://github.com/VIPAAR/ios-xmlrpc.git"
  s.license      = 'Copyright VIPAAR 2013'
  s.author       = 'Marcus Dillavou' 
  s.source       = { :git => "ssh://git@github.com/VIPAAR/ios-xmlrpc.git", :commit => "7e2928f598afaeaad6c854045f682346ca16ee1f" }
  s.source_files = 'xmlrpc/XML*.{h,m}', 'xmlrpc/NSStringAdditions.{h,m}', 'xmlrpc/NSData*.{h,m}'
  s.requires_arc = true
end

