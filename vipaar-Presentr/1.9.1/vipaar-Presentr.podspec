Pod::Spec.new do |s|
  s.name         = "vipaar-Presentr"
  s.version      = "1.9.1"
  s.summary      = "A simple Swift wrapper for custom view controller presentations."
  s.description  = <<-DESC
                    Simplifies creating custom view controller presentations. Specially the typical ones we use which are a popup, an alert, or a any non-full-screen modal. Abstracts having to deal with custom presentation controllers and transitioning delegates
                   DESC
  s.homepage     = "http://github.com/icalialabs/Presentr"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Daniel Lozano" => "dan@danielozano.com" }
  s.social_media_url   = "http://twitter.com/danlozanov"
  s.platform     = :ios, "14.0.0"
  s.swift_version = "5.0"
  s.source       = { :git => "ssh://git@github.com/VIPAAR/Presentr.git", :tag => "#{s.version}" }
  s.source_files = "Presentr/**/*.{swift}"
  s.resources    = "Presentr/**/*.{xib,ttf}"
  s.module_name  = "Presentr"
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
  }
end
