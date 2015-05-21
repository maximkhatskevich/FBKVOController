Pod::Spec.new do |s|
  s.name         = 'FBKVOController'
  s.version      = '1.0.10'
  s.license      =  { :type => 'BSD', :file => "LICENSE" }
  s.homepage     = 'https://github.com/facebook/KVOController'
  s.authors      = { 'Kimon Tsinteris' => 'kimon@mac.com' }
  s.summary      = 'Simple, modern, thread-safe key-value observing.'
  s.description  = "KVOController builds on Cocoa's time-tested key-value observing implementation. It offers a simple, modern API, that is also thread safe. Benefits include: notification using blocks, custom actions, or NSKeyValueObserving callback, no exceptions on observer removal, implicit observer removal on controller dealloc, thread-safety with special guards against observer resurrection."
  s.source       = { :git => 'https://github.com/maximkhatskevich/FBKVOController.git', :tag => "#{s.version}" }
  s.source_files = 'Src/*.{h,m}'
  s.requires_arc = true

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
end
