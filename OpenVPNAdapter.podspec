#
# Be sure to run `pod lib lint Taxofon-NetworkApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenVPNAdapter'
  s.version          = '0.0.1'
  s.summary          = 'OpenVPNAdapter is an Objective-C framework that allows to easily configure and establish VPN connection using OpenVPN protocol'

  s.description      = <<-DESC
OpenVPNAdapter is an Objective-C framework that allows to easily configure and establish VPN connection using OpenVPN protocol. It is based on the original openvpn3 library so it has every feature the library has.

The framework is designed to use in conjunction with NetworkExtension framework and doesn't use any private Apple API. Compatible with iOS and macOS and also Swift friendly.
                       DESC

  s.homepage         = 'https://github.com/ss-abramchuk/OpenVPNAdapter'
  s.license          = 'GPL2'
  s.author           = { 'ss-abramchuk' => 'your email' }
  s.source           = { :git => 'https://github.com/ss-abramchuk/OpenVPNAdapter', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.source_files = 'OpenVPN Adapter/**/*'
  s.exclude_files = 'OpenVPN Adapter/Vendors/'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'NetworkExtension', 'SystemConfiguration'
  # s.dependency 'JSONModel'
  s.dependency 'mbedTLS'
  s.module_name = 'OpenVPN'
end
