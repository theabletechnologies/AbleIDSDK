#
#  Be sure to run `pod spec lint AbleIDSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|

  s.name         = 'AbleIDSDK'
  s.version      = '0.0.12'
  s.summary      = 'The AbleIDSDK is solely developed to provide face liveness detection check.'
  s.description  = "The AbleIDSDK is solely developed to provide face liveness detection check and it should be used only with the permission of the The Able Technologies."
  s.homepage     = "https://github.com/JasurSalimov"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { 'Jasur Salimov' => 'jasurtsalimov@gmail.com' }

  s.source       = { :http => 'https://www.dropbox.com/scl/fi/i9og2xuv23d7i0t9lboop/AbleIDSDK.zip?rlkey=gafflww5bu7yok0hujy9ow0mc&st=yhu0kwcp&dl=1' }
  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'
  s.frameworks = 'UIKit'
  s.dependency 'FaceSDK', '~> 6.4.2321'
  s.dependency 'FaceCoreBasic', '~> 6.4.1111'
  s.ios.vendored_frameworks = 'AbleIDSDK.xcframework'
  s.exclude_files = "Classes/Exclude"
end