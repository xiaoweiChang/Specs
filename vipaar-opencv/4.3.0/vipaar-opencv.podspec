Pod::Spec.new do |s|
    s.name                      = "vipaar-opencv"
    s.version                   = "4.3.0"
    s.summary                   = "OpenCV"
    s.homepage                  = "https://www.opencv.org"
    s.license                   = "https://www.opencv.org/license.html"
    s.author                    = "OpenCV"
    s.source                    = {
      :http => "https://github.com/opencv/opencv/releases/download/#{s.version}/opencv-#{s.version}-ios-framework.zip",
      :sha1 => "9e8cad84c66f204b6761c716ac64effe25b66dcd"
    }
    s.preserve_paths            = "distributive"
    s.prepare_command           = <<-CMD
        mkdir -p distributive/include/opencv2
        mv opencv2.framework distributive
        cp -R distributive/opencv2.framework/Headers/* distributive/include/opencv2
      CMD

    s.frameworks                = 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'Foundation', 'QuartzCore', 'UIKit'
    s.libraries                 = 'c++'
    s.platform                  = :ios
    s.ios.deployment_target     = '9.0'
    s.ios.vendored_frameworks   = 'distributive/opencv2.framework'
    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-opencv/distributive/"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-opencv/distributive/include/"'
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-opencv/distributive"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-opencv/distributive/include/"'
    }
end
