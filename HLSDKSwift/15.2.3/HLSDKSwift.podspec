Pod::Spec.new do |s|
  s.name         = "HLSDKSwift"
  s.version      = "15.2.3"
  s.summary      = "HLSDKSwift"
  s.homepage     = "https://github.com/VIPAAR/lime-ios-sdk"
  s.license      = 'Copyright VIPAAR 2022'
  s.author       = 'Helplightning' 
  s.source       = { 
    :http => "https://maven.helplightning.net/iOS/HLSDK-iOS-#{s.version}.zip",
    :sha1 => "6455805c9ae037aa2ee4c9a9ecd4d3215f93b291"
  }
  s.source_files = ''
  s.requires_arc = true
  s.platform                  = :ios
  s.ios.deployment_target     = '13.0'

  s.preserve_paths            = "distributive"
  s.vendored_frameworks       = 'HLSDKCommon.framework', 'HLSDKBrokerSwift.framework', 'HLSDK.framework', 'HLSDKSwift.framework'
  s.prepare_command           = <<-CMD
    mkdir distributive
    mv *[^distributive]* distributive        
  CMD

  s.ios.dependency 'vipaar-tinyspline', '1.0.0'
  s.ios.dependency 'vipaar-libyuv', '1.0.3'
  s.ios.dependency 'vipaar-j2objc', '1.2'
  s.ios.dependency 'OpenCV2', '4.3.0'
  s.ios.dependency 'PromisesObjC', '2.0.0'
  s.ios.dependency 'PromisesSwift', '2.0.0'
  s.ios.dependency 'CocoaLumberjack', '3.7.4'
  s.ios.dependency 'OpenTok', '2.21.3'
  s.ios.dependency 'FXKeychain', '1.5.1'
  s.ios.dependency 'SDWebImage', '3.7.1'
  s.ios.dependency 'UIActivityIndicator-for-SDWebImage', '1.2'
  s.ios.dependency 'vipaar-reachability', '3.2.1'
  s.ios.dependency 'SVProgressHUD', '2.2.2'
  s.ios.dependency 'CocoaZ', '1.4.2'
  s.ios.dependency 'tarkit', '0.1.3'
  s.ios.dependency 'Kingfisher', '5.15.8'
  s.ios.dependency 'vipaar-swift-catomic', '1.0.0'
  s.ios.dependency 'vipaar-swift-cmark-gfm', '1.0.0'
  s.ios.dependency 'vipaar-swift-cmark-gfm-extensions', '1.0.0'
  s.ios.dependency 'vipaar-swift-markdown', '1.0.0'
  s.ios.dependency 'vipaar-MessageKit', '1.0.3'
  s.resources = ['distributive/HLSDKResources.bundle']

  s.pod_target_xcconfig       = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDKSwift/distributive"',
  }
  s.user_target_xcconfig      = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDKSwift/distributive"',
    'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/HLSDKSwift/distributive/HLSDK.framework/Headers" "$(PODS_ROOT)/HLSDKSwift/distributive/HLSDKCommon.framework/Headers"',
    'OTHER_LDFLAGS'          => '-licucore -framework JRE -framework HLSDKBrokerSwift -force_load \""$(PODS_ROOT)"/HLSDKSwift/distributive/HLSDK.framework/HLSDK\" -force_load \""$(PODS_ROOT)"/HLSDKSwift/distributive/HLSDKCommon.framework/HLSDKCommon\"',
    'LIBRARY_SEARCH_PATHS'   => '"$(PODS_ROOT)/HLSDKSwift/distributive/HLSDKBrokerSwift.framework"',
    'SWIFT_INCLUDE_PATHS'    => '"$(PODS_ROOT)/HLSDKSwift/distributive/HLSDKBrokerSwift.framework"',
  }
 end


