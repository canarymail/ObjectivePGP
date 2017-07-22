Pod::Spec.new do |s|
  s.name         = "ObjectivePGP"
  s.version      = "0.6.2"
  s.summary      = "OpenPGP for iOS and macOS"
  s.description  = "Native OpenPGP (RFC 4880) implementation for iOS and macOS."
  s.homepage     = "https://github.com/dsanghan/ObjectivePGP"
  s.license	     = { :type => 'BSD', :file => 'LICENSE.txt' }
  s.source       = { :git => "https://github.com/dsanghan/ObjectivePGP.git", :tag => "#{s.version}" }

  s.authors      = {'Marcin Krzyżanowski' => 'marcin@krzyzanowskim.com'}
  s.social_media_url   = "https://twitter.com/krzyzanowskim"
  
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  
  s.ios.vendored_frameworks = 'Frameworks/ios/ObjectivePGP.framework'
  s.osx.vendored_frameworks = 'Frameworks/macosx/ObjectivePGP.framework'  
  
  s.weak_frameworks = 'Security'
  s.requires_arc = true

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.libraries =  'z', 'bz2'
end
