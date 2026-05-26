#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint macos/localized_rich_text.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'localized_rich_text'
  s.version          = '0.0.7'
  s.summary          = 'A flutter plugin to facilitate the localization of a RichText.'
  s.description      = <<-DESC
A flutter plugin to facilitate the localization of a RichText.
                       DESC
  s.homepage         = 'https://github.com/LaTrita97/localized_rich_text'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'localized_rich_text/Sources/localized_rich_text/**/*.swift'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.15'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.9'
end
