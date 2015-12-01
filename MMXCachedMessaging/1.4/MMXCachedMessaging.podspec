Pod::Spec.new do |spec|
  spec.name         = 'MMXCachedMessaging'
  spec.version      = '1.4'
  spec.license      =  'BSD'
  spec.summary      = 'An Objective-C client for cacheing MMX channels and messages'
  spec.homepage     = 'https://bitbucket.org/thomasrim/mmxcachedmessaging'
  spec.author       = 'Vladimir Yevdokimov'
  spec.source       = { :git => 'https://bitbucket.org/thomasrim/mmxcachedmessaging.git', :tag=>'1.4' }

  spec.source_files  = "MMXCachedMessaging/MMXMessageCache.{h,m}","MMXCachedMessaging/MMXMessageManager.{h,m}"
  spec.public_header_files = "MMXCachedMessaging/MMXMessageCache.h","MMXCachedMessaging/MMXMessageManager.h"
  spec.xcconfig       =  { 'OTHER_LDFLAGS' => '-ObjC -all_load', 'ENABLE_BITCODE'=>'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

  spec.platform = :ios
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true

  spec.dependency "MagnetMax", "~> 2.0"
end
