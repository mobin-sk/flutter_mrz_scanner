#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_mrz_scanner.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_mrz_scanner'
  s.version          = '0.0.2'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Dscale' => 'ayisha.farhan@dscale.io' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'SwiftyTesseract', '~> 3.1.3'
  s.platform = :ios, '12.0'
  # s.resource_bundles = {"TraineedDataBundle" => ["tessdata/*"] }
  s.resources = ['Assets/TraineedDataBundle.bundle']

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.2'
end
