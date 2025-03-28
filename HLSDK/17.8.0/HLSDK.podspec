Pod::Spec.new do |s|
  s.name         = "HLSDK"
  s.version      = "17.8.0"
  s.summary      = "HLSDK"
  s.homepage     = "https://github.com/VIPAAR/lime-ios-sdk"
  s.license      = 'Copyright VIPAAR 2024'
  s.author       = 'Helplightning'
  s.source       = {
    :http => "http://localhost/ios/HLSDK-iOS-#{s.version}.zip",
    :sha1 => "27e5a6b3e4f3558274f8f5702580b98dcb4f83ae"
  }
  s.source_files = ''
  s.requires_arc = true
  s.platform                  = :ios
  s.ios.deployment_target     = '14.0'

  s.preserve_paths            = "distributive"
  s.prepare_command           = <<-CMD
    mkdir distributive
    mv *[^distributive]* distributive
  CMD
  s.default_subspecs = 'Main'
  s.ios.frameworks = 'ARKit', 'GLKit', 'UIKit'

  s.subspec 'Main' do |m|
    m.ios.dependency 'vipaar-tinyspline', '1.0.0'
    m.ios.dependency 'vipaar-j2objc', '1.2'
    m.ios.dependency 'PromisesObjC', '2.0.0'
    m.ios.dependency 'PromisesSwift', '2.0.0'
    m.ios.dependency 'CocoaLumberjack', '3.7.4'
    m.ios.dependency 'OTXCFramework', '2.27.4'
    m.ios.dependency 'FXKeychain', '1.5.1'
    m.ios.dependency 'SDWebImage', '3.7.1'
    m.ios.dependency 'UIActivityIndicator-for-SDWebImage', '1.2'
    m.ios.dependency 'vipaar-reachability', '3.2.1'
    m.ios.dependency 'SVProgressHUD', '2.2.2'
    m.ios.dependency 'CocoaZ', '1.4.2'
    m.ios.dependency 'tarkit', '0.1.3'
    m.ios.dependency 'Kingfisher', '8.1.3'
    m.ios.dependency 'vipaar-MessageKit', '1.0.5'
    m.ios.dependency 'vipaar-swift-catomic', '1.0.0'
    m.ios.dependency 'vipaar-swift-cmark-gfm', '1.0.0'
    m.ios.dependency 'vipaar-swift-cmark-gfm-extensions', '1.0.0'
    m.ios.dependency 'vipaar-swift-markdown', '1.0.0'
    m.ios.dependency 'vipaar-SVGKit', '3.1.0'

    m.ios.dependency 'AWSCore', '2.23.5'
    m.ios.dependency 'AWSS3', '2.23.5'
    m.ios.dependency 'JVFloatLabeledTextField', '1.2.2'
    m.ios.dependency 'SkeletonView', '1.13.0'
    m.ios.dependency 'Alamofire', '5.0.5'
    m.ios.dependency 'SwiftQueue', '6.0.0'
    m.ios.dependency 'SwiftEventBus', '5.0.0'
    m.ios.dependency 'vipaar-Parchment', '1.7.1'
    m.ios.dependency 'SwiftSignatureView', '2.2.3'
    m.ios.dependency 'vipaar-Presentr', '1.9.1'
    m.ios.dependency 'Realm', '10.41.1'
    m.ios.dependency 'MarqueeLabel', '4.4.0'
    m.ios.dependency 'ZIPFoundation', '0.9.16'    

    m.ios.frameworks = 'ARKit', 'GLKit', 'UIKit'
    m.resources = ['distributive/HLSDKResources.bundle', 'distributive/FBDatabase.xcdatamodeld']
    m.vendored_frameworks       = ['HLSDKLogging.framework', 'HLSDKBufferRing.framework', 'HLSDKCamera.framework', 'HLSDKDarwinNotification.framework', 'HLSDKCommon.framework', 'HLSDKBrokerSwift.framework', 'HLSDK.framework', 'FBSDK.framework', 'HLSDKUI.framework', 'HLSDKBallyhoo.framework']

    m.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
    }
    m.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
      'OTHER_CFLAGS'           => '-isystem "$(PODS_ROOT)/HLSDK/distributive"',
      'OTHER_LDFLAGS'          => '-licucore -framework "JRE" -framework "HLSDKBrokerSwift" -framework "FBSDK" -framework "HLSDK" -framework "HLSDKLogging" -framework "HLSDKBufferRing" -framework "HLSDKDarwinNotification" -framework "HLSDK" -framework "HLSDKCommon" -framework "HLSDKUI" -framework "HLSDKCamera" -framework "HLSDKBallyhoo"',
      'LIBRARY_SEARCH_PATHS'   => '"$(PODS_ROOT)/HLSDK/distributive/HLSDKBrokerSwift.framework" "$(PODS_ROOT)/HLSDK/distributive/FBSDK.framework"',
      'SWIFT_INCLUDE_PATHS'    => '"$(PODS_ROOT)/HLSDK/distributive/HLSDKBrokerSwift.framework" "$(PODS_ROOT)/HLSDK/distributive/FBSDK.framework"',
    }
  end

  s.subspec 'ScreenSharing' do |ss|
    ss.ios.dependency 'CocoaLumberjack', '3.7.4'
    ss.ios.frameworks = 'ReplayKit'
    ss.vendored_frameworks       = 'HLSDKLogging.framework', 'HLSDKBufferRing.framework', 'HLSDKDarwinNotification.framework', 'HLSDKScreenSharing.framework'

    ss.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
    }
    ss.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/HLSDK/distributive"',
      'OTHER_CFLAGS'           => '-isystem "$(PODS_ROOT)/HLSDK/distributive"',
      'OTHER_LDFLAGS'          => '-framework "HLSDKLogging" -framework "HLSDKBufferRing" -framework "HLSDKDarwinNotification" -framework "HLSDKDomainSocket" -framework "HLSDKScreenSharing"',
    }
  end

end
