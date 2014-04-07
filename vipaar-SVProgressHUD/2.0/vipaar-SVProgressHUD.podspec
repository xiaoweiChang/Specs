Pod::Spec.new do |s|
  s.name     = 'vipaar-SVProgressHUD'
  s.version  = '2.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'A clean and lightweight progress HUD for your iOS app.'
  s.homepage = 'http://samvermette.com/199'
  s.author   = { 'Sam Vermette' => 'hello@samvermette.com' }
  s.source   = { :git => 'https://github.com/VIPAAR/SVProgressHUD.git', :tag => '2.0'}

  s.description = 'SVProgressHUD is an easy-to-use, clean and lightweight progress HUD for iOS. It’s a simplified and prettified alternative to the popular MBProgressHUD. The success and error icons are from Glyphish.'

  s.source_files = 'SVProgressHUD/*.{h,m}'
  s.framework    = 'QuartzCore'
  s.resources    = 'SVProgressHUD/SVProgressHUD.bundle'
  s.requires_arc = true
end
