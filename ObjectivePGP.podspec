Pod::Spec.new do |s|
  s.name         = "ObjectivePGP"
  s.version      = "0.14.0"
  s.summary      = "OpenPGP for iOS and macOS"
  s.description  = "Native OpenPGP (RFC 4880) implementation for iOS and macOS."
  s.homepage     = "http://objectivepgp.com"
  s.license	     = { :type => 'BSD for non-commercial use', :file => 'LICENSE.txt' }
  s.source       = { :git => "https://github.com/dsanghan/ObjectivePGP.git" }

  s.authors      = {'Marcin Krzyzanowski' => 'marcin@krzyzanowskim.com'}
  s.social_media_url   = "https://twitter.com/krzyzanowskim"

  s.ios.deployment_target = '8.0'
  s.ios.header_dir        = 'ObjectivePGP'
  s.osx.deployment_target = '10.9'
  s.osx.header_dir        = 'ObjectivePGP'
  
  s.source_files = 'ObjectivePGP/*.{h,m}', 'ObjectivePGP/CryptoBox/*.{h,m}'
  s.public_header_files = 'ObjectivePGP/*.h', 'ObjectivePGP/CryptoBox/*.h'

  s.dependency 'OpenSSL-Universal'
  s.requires_arc = true
  
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.libraries =  'z', 'bz2'

  s.requires_arc = true
end
