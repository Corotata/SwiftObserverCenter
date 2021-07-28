#
# Be sure to run `pod lib lint SwiftObserverCenter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftObserverCenter'
  s.version          = '1.0.0'
  s.summary          = 'SwiftObserverCenter.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A short description of SwiftObserverCenter.
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Corotata/SwiftObserverCenter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'corotata' => 'corotata@qq.com' }
  s.source           = { :git => 'https://github.com/Corotata/SwiftObserverCenter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.pod_target_xcconfig = {'DEFINES_MODULE' => 'YES' }
  s.ios.deployment_target = "12.0"
  s.macos.deployment_target = '10.14'
  s.swift_versions = ['5.0']
  s.source_files = 'SwiftObserverCenter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftObserverCenter' => ['SwiftObserverCenter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
