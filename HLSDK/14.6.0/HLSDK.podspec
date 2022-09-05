Pod::Spec.new do |s|
    s.name         = "HLSDK"
    s.version      = "14.6.0"
    s.summary      = "HLSDK"
    s.homepage     = "https://github.com/VIPAAR/lime-ios-sdk"
    s.license      = 'Copyright VIPAAR 2021'
    s.author       = 'Helplightning' 
    s.source       = { 
      :http => "https://maven.helplightning.net/iOS/HLSDK-iOS-#{s.version}.zip",
      :sha1 => "626cdbace0ad60be57324228ba96d3a260726dc9"
    }
    s.source_files = ''

    s.requires_arc = true
    s.platform                  = :ios
    s.ios.deployment_target     = '12.0'

    s.preserve_paths            = "distributive"
    s.vendored_frameworks       = 'HLSDK.framework'
    s.prepare_command           = <<-CMD
      mv HLSDK-iOS-#{s.version}/distributive . 
    CMD

    s.ios.dependency 'vipaar-tinyspline', '1.0.0'
    s.ios.dependency 'vipaar-libyuv', '1.0.3'
    s.ios.dependency 'vipaar-j2objc', '1.2'
    s.ios.dependency 'OpenCV2', '4.3.0'
    s.ios.dependency 'PromisesObjC', '1.2.8'
    s.ios.dependency 'CocoaLumberjack', '3.5.3'
    s.ios.dependency 'OpenTok', '2.18.1'
    s.ios.dependency 'FXKeychain', '1.5.1'
    s.ios.dependency 'SDWebImage', '3.7.1'
    s.ios.dependency 'UIActivityIndicator-for-SDWebImage', '1.2'
    s.ios.dependency 'vipaar-reachability', '3.2.1'
    s.ios.dependency 'SVProgressHUD', '2.2.2'
    s.ios.dependency 'CocoaZ', '1.4.2'
    s.ios.dependency 'tarkit', '0.1.3'
    s.resources = ['distributive/HLSDKResources.bundle']

    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/HLSDK/distributive/HLSDK.framework/Headers"',
      'OTHER_LDFLAGS'          => '-licucore -framework JRE -force_load \""$(PODS_ROOT)"/HLSDK/distributive/HLSDK.framework/HLSDK\"'
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/HLSDK/distributive/HLSDK.framework/Headers"',
      'OTHER_LDFLAGS'          => '-licucore -framework JRE -force_load \""$(PODS_ROOT)"/HLSDK/distributive/HLSDK.framework/HLSDK\"'
    }
   end
  
  
