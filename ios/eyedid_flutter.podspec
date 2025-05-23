#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint eyedid_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'eyedid_flutter'
  s.version          = '0.0.4'
  s.summary          = 'Eyedid Flutter plugin project.'
  s.description      = <<-DESC
Eyedid SDK
                       DESC
  s.homepage         = 'http://sdk.eyedid.ai'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'VisualCamp' => 'development@vissual.camp' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.documentation_url = 'https://docs.eyedid.ai'
  s.dependency 'Flutter'
  s.dependency 'Eyedid', '~> 1.0.0-beta4'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'eyedid_flutter_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
