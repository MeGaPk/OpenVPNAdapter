#
# Be sure to run `pod lib lint Taxofon-NetworkApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'mbedtls'
  s.version          = '0.0.1'
  s.summary          = 'mbedtls'

  s.description      = <<-DESC
mbedtls
                       DESC

  s.homepage         = 'https://github.com/ss-abramchuk/OpenVPNAdapter'
  s.license          = 'GPL2'
  s.author           = { 'ss-abramchuk' => 'your email' }
  s.source           = { :git => 'https://github.com/ss-abramchuk/mbedtls', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

#  s.source_files = 'OpenVPN Adapter/**/*'
#  s.exclude_files = 'OpenVPN Adapter/Vendors/'
  s.static_framework = true
  s.public_header_files = 'include/mbedtls/**/*.h'
  s.vendored_libraries = 'lib/macos/libmbedcrypto.a', 'lib/macos/libmbedtls.a', 'lib/macos/libmbedx509.a'
  s.module_name = 'mbedtls'
end
