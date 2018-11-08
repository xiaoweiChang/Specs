# coding: utf-8
Pod::Spec.new do |s|
    s.name                      = "seekware"
    s.version                   = "3.0.b4"
    s.summary                   = "Seekware"
    s.homepage                  = "http://www.thermal.com/"
    s.license                   = "Copyright © 2018 Seek Thermal, Inc. All rights reserved."
    s.author                    = "Seek Thermal"
    s.source                    = {
      :git => 'https://github.com/VIPAAR/SeekThermal_iOS_SDK.git',
      :tag => "#{s.version}"
    }
    s.preserve_paths            = "distributive"
    s.prepare_command           = <<-CMD
        mkdir -p distributive/include/Seekware
        mv Seekware.framework distributive
        cp -R distributive/Seekware.framework/Headers/* distributive/include/Seekware
      CMD

    s.frameworks                = 'AVFoundation', 'Photos', 'ImageIO', 'ExternalAccessory', 'Foundation', 'ImageIO', 'UIKit'
    s.platform                  = :ios
    s.ios.deployment_target     = '9.0'
    s.ios.vendored_frameworks   = 'distributive/Seekware.framework'
    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/seekware/distributive/"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/seekware/distributive/include/"'
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/seekware/distributive"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/seekware/distributive/include/"'
    }
end
