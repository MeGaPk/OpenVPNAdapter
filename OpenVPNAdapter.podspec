#
# Be sure to run `pod lib lint Taxofon-NetworkApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenVPNAdapter'
  s.version          = '0.0.4'
  s.summary          = 'OpenVPNAdapter is an Objective-C framework that allows to easily configure and establish VPN connection using OpenVPN protocol'

  s.description      = <<-DESC
OpenVPNAdapter is an Objective-C framework that allows to easily configure and establish VPN connection using OpenVPN protocol. It is based on the original openvpn3 library so it has every feature the library has.

The framework is designed to use in conjunction with NetworkExtension framework and doesn't use any private Apple API. Compatible with iOS and macOS and also Swift friendly.
                       DESC

  s.homepage         = 'https://github.com/MeGaPk/OpenVPNAdapter'
  s.license          = { :type => 'AGPLv3', :file => 'LICENSE' }
  s.author           = { 'MeGaPk' => 'megapk@gmail.com' }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.ios.source = { :http => 'https://github.com/MeGaPk/OpenVPNAdapter/releases/download/v0.0.4/open_vpn_adapter_ios.zip' }
  s.osx.source = { :http => 'https://github.com/MeGaPk/OpenVPNAdapter/releases/download/v0.0.4/open_vpn_adapter_osx.zip' }

  s.source_files = 'OpenVPNAdapter.framework/Headers/*.h'
  s.public_header_files = 'OpenVPNAdapter.framework/Headers/*.h'
  s.vendored_frameworks = 'OpenVPNAdapter.framework'

  s.frameworks = 'NetworkExtension', 'SystemConfiguration'
  s.static_framework = true
  s.module_name = 'OpenVPNAdapter'
end
