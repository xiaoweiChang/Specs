Pod::Spec.new do |s|
    s.name        = 'vipaar-PromisesObjC'
    s.version     = '1.2.8'
    s.authors     = 'Google Inc.'
    s.license     = { :type => 'Apache', :file => 'distributive/LICENSE' }
    s.homepage    = 'https://github.com/google/promises'
    s.source      = {
      :http => "https://github.com/google/promises/archive/#{s.version}.zip",
      :sha1 => '68509ee7a45c003d127e8cf2bd9ac747618b08f6'
    }
    s.summary     = 'Synchronization construct for Objective-C'
    s.description = <<-DESC
    Promises is a modern framework that provides a synchronization construct for
    Objective-C to facilitate writing asynchronous code.
      DESC

    s.prepare_command           = <<-CMD
        export BUILD_TARGET=FBLPromises
        mkdir -p distributive
        rm promises-#{s.version}/BUILD
        cd promises-#{s.version}
        xcodebuild archive -target $BUILD_TARGET -configuration Release -sdk iphoneos ONLY_ACTIVE_ARCH=NO
        xcodebuild archive -target $BUILD_TARGET -configuration Release -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO
        cp -RL build/Release-iphoneos/$BUILD_TARGET.framework ../distributive
        lipo -create -output ../distributive/$BUILD_TARGET.framework/$BUILD_TARGET build/Release-iphoneos/$BUILD_TARGET.framework/$BUILD_TARGET build/Release-iphonesimulator/$BUILD_TARGET.framework/$BUILD_TARGET
        cp LICENSE ../distributive
      CMD

    s.ios.deployment_target  = '8.0'
    s.platform                  = :ios
    s.preserve_paths            = "distributive"
    s.ios.vendored_frameworks   = 'distributive/FBLPromises.framework'

    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-PromisesObjC/distributive/"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-PromisesObjC/distributive/FBLPromises.framework/Headers/"'
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-PromisesObjC/distributive"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-PromisesObjC/distributive/FBLPromises.framework/Headers"'
    }
  end
