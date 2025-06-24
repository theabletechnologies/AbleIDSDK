#
#  Be sure to run `pod spec lint AbleIDSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|

  s.name         = 'AbleIDSDK'
  s.version      = '0.0.13'
  s.summary      = 'The AbleIDSDK is solely developed to provide face liveness detection check.'
  s.description  = "The AbleIDSDK is solely developed to provide face liveness detection check and it should be used only with the permission of the The Able Technologies."
  s.homepage     = "https://github.com/JasurSalimov"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { 'Jasur Salimov' => 'jasurtsalimov@gmail.com' }

  s.source       = { :http => 'https://www.dropbox.com/scl/fi/xvavp1e8msjko4a0rdmjq/AbleIDSDK.zip?rlkey=6wo3smc5o5iumqix37mxu0gg5&st=n5ehgcs8&dl=1' }
  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'
  s.frameworks = 'UIKit'
  s.dependency 'FaceSDK', '~> 7.1.2790'
  s.dependency 'FaceCoreBasic', '~> 7.1.1441'
  s.ios.vendored_frameworks = 'AbleIDSDK.xcframework'
  s.exclude_files = "Classes/Exclude"
end