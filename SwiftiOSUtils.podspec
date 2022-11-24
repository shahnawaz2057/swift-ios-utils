Pod::Spec.new do |s|
  s.name             = 'SwiftiOSUtils'
  s.version          = '1.0.3'
  s.summary          = 'SwiftUtils utilities method'
  s.license = { :type => 'MIT', :text => <<-LICENSE
                   Copyright 2022
                   Permission is granted to...
                 LICENSE
               }

  s.description      = 'SwiftUtils provides utilities method to check for valid email, phone number etc'

  s.homepage         = 'https://github.com/shahnawaz2057/swift-ios-utils.git'
  s.author           = { 'shahnawaz_cts' => 'shahnawaz.alam@cognizant.com' }
  s.source           = { :git => 'https://github.com/shahnawaz2057/swift-ios-utils.git', :tag => s.version.to_s}

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/SwiftiOSUtils/**/*'
  s.swift_version = '5.0'
  s.platforms = {
    "ios": "9.0"
  }
   s.dependency 'SnowplowTracker', '~> 4.0'
end
