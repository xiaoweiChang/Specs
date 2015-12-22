Pod::Spec.new do |s|
  s.name     = 'vipaar-tinyspline'
  s.version  = '1.0.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'A NURBS library.'
  s.homepage = 'https://github.com/retuxx/tinyspline'
  s.author   = { 'Marcus Dillavou' => 'marcus.dillavou@helplightning.com' }
  s.source   = { :git => 'https://github.com/VIPAAR/tinyspline.git', :tag => "1.0.0"}
  s.source_files = 'libtinyspline/*.{h,m}'
  s.requires_arc = false
end
