Pod::Spec.new do |spec|
  spec.name         = 'MMXCachedMessaging'
  spec.version      = '1.5'
  spec.license      =  'MIT'
  spec.summary      = 'An Objective-C client for cacheing MMX channels and messages'
  spec.homepage     = 'https://github.com/thomasRim/MMXCachedMessaging'
  spec.author       = 'Vladimir Yevdokimov'
  spec.source       = { :git => 'https://github.com/thomasRim/MMXCachedMessaging.git', :tag=>'1.5' }

  spec.source_files  = "MMXCachedMessaging/MMXMessageCache.{h,m}","MMXCachedMessaging/MMXMessageManager.{h,m}"
  spec.public_header_files = "MMXCachedMessaging/MMXMessageCache.h","MMXCachedMessaging/MMXMessageManager.h"
  spec.xcconfig       =  { 'OTHER_LDFLAGS' => '-ObjC -all_load', 'ENABLE_BITCODE'=>'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

  spec.platform = :ios
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true

  spec.dependency "MagnetMax", "~> 2.0"
end
