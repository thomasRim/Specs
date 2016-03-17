Pod::Spec.new do |spec|
  spec.name         = 'YVChatKit'
  spec.version      = '1.0.0'
  spec.license      =  'MIT'
  spec.summary      = 'An Objective-C client for MMX channels and messages'
  spec.homepage     = 'https://github.com/thomasRim'
  spec.author       = 'Vladimir Yevdokimov'
  spec.source       = { :git => 'https://github.com/magnetsystems/message-samples-ios.git', :branch => 'develop' }

  spec.source_files  = "Messengerv2/ios/ChatKit/UI/*"
  spec.xcconfig       =  { 'OTHER_LDFLAGS' => '-ObjC -all_load', 'ENABLE_BITCODE'=>'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

  spec.platform = :ios
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true

  spec.dependency "MagnetMax", "~> 2.5.1"

end
