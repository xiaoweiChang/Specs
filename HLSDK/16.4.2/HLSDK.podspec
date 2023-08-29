Pod::Spec.new do |s|
    s.name         = "HLSDK"
    s.version      = "16.4.2"
    s.summary      = "HLSDK"
    s.homepage     = "https://github.com/VIPAAR/lime-ios-sdk"
    s.license      = 'Copyright VIPAAR 2023'
    s.author       = 'Helplightning'
    s.source       = {
      :http => "https://maven.helplightning.net/iOS/HLSDK-iOS-#{s.version}.zip",
      :sha1 => "8b814b027052ff983879243516d0a21d6554dc81"
    }
    s.source_files = ''
    s.requires_arc = true
    s.platform                  = :ios
    s.ios.deployment_target     = '14.0'

    s.preserve_paths            = "distributive"
    s.vendored_frameworks       = 'HLSDKCommon.framework', 'HLSDKBrokerSwift.framework', 'HLSDK.framework'
    s.prepare_command           = <<-CMD
      mkdir distributive
      mv *[^distributive]* distributive
    CMD

    s.ios.dependency 'vipaar-tinyspline', '1.0.0'
    s.ios.dependency 'vipaar-j2objc', '1.2'
    s.ios.dependency 'PromisesObjC', '2.0.0'
    s.ios.dependency 'PromisesSwift', '2.0.0'
    s.ios.dependency 'CocoaLumberjack', '3.7.4'
    s.ios.dependency 'OTXCFramework', '2.25.2'
    s.ios.dependency 'FXKeychain', '1.5.1'
    s.ios.dependency 'SDWebImage', '3.7.1'
    s.ios.dependency 'UIActivityIndicator-for-SDWebImage', '1.2'
    s.ios.dependency 'vipaar-reachability', '3.2.1'
    s.ios.dependency 'SVProgressHUD', '2.2.2'
    s.ios.dependency 'CocoaZ', '1.4.2'
    s.ios.dependency 'tarkit', '0.1.3'
    s.ios.dependency 'Kingfisher', '5.15.8'
    s.ios.dependency 'vipaar-MessageKit', '1.0.5'
    s.ios.dependency 'vipaar-swift-catomic', '1.0.0'
    s.ios.dependency 'vipaar-swift-cmark-gfm', '1.0.0'
    s.ios.dependency 'vipaar-swift-cmark-gfm-extensions', '1.0.0'
    s.ios.dependency 'vipaar-swift-markdown', '1.0.0'
    s.ios.dependency 'vipaar-SVGKit', '3.1.0'

    s.ios.dependency 'AWSCore', '2.23.5'
    s.ios.dependency 'AWSS3', '2.23.5'
    s.ios.dependency 'TwilioConversationsClient', '2.0.3'
    s.ios.dependency 'TwilioAccessManager', '1.1.2'
    s.ios.dependency 'JVFloatLabeledTextField', '1.2.2'
    s.ios.dependency 'SkeletonView', '1.13.0'
    s.ios.dependency 'Alamofire', '5.0.5'
    s.ios.dependency 'SwiftQueue', '6.0.0'
    s.ios.dependency 'SwiftEventBus', '5.0.0'
    s.ios.dependency 'KMPlaceholderTextView', '1.4.0'
    s.ios.dependency 'vipaar-Parchment', '1.7.1'
    s.ios.dependency 'SwiftSignatureView', '2.2.3'
    s.ios.dependency 'Presentr', '1.9'

    s.resources = ['distributive/HLSDKResources.bundle', 'distributive/FBDatabase.xcdatamodeld']

    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/HLSDK/distributive/HLSDK.framework/Headers" "$(PODS_ROOT)/HLSDK/distributive/HLSDKCommon.framework/Headers" "$(PODS_ROOT)/HLSDK/distributive/HLSDKUI.framework/Headers"',
      'OTHER_LDFLAGS'          => '-licucore -framework JRE -framework HLSDKBrokerSwift -framework FBSDK -force_load \""$(PODS_ROOT)"/HLSDK/distributive/HLSDK.framework/HLSDK\" -force_load \""$(PODS_ROOT)"/HLSDK/distributive/HLSDKCommon.framework/HLSDKCommon\" -force_load \""$(PODS_ROOT)"/HLSDK/distributive/HLSDKUI.framework/HLSDKUI\"',
      'LIBRARY_SEARCH_PATHS'   => '"$(PODS_ROOT)/HLSDK/distributive/HLSDKBrokerSwift.framework" "$(PODS_ROOT)/HLSDK/distributive/FBSDK.framework"',
      'SWIFT_INCLUDE_PATHS'    => '"$(PODS_ROOT)/HLSDK/distributive/HLSDKBrokerSwift.framework" "$(PODS_ROOT)/HLSDK/distributive/FBSDK.framework"',
    }

   end
