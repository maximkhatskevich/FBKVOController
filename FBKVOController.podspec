Pod::Spec.new do |spec|
  spec.name         = 'FBKVOController'
  spec.version      = '1.0.5'
  spec.license      =  { :type => 'BSD' }
  spec.homepage     = 'https://github.com/facebook/KVOController'
  spec.authors      = { 'Kimon Tsinteris' => 'kimon@mac.com' }
  spec.summary      = 'Simple, modern, thread-safe key-value observing.'
  spec.description  = <<-DESC
                      KVOController builds on Cocoa's time-tested key-value observing implementation. It offers a simple, modern API, that is also thread safe.
                      Benefits include:
                      Notification using blocks, custom actions, or NSKeyValueObserving callback.
                      No exceptions on observer removal.
                      Implicit observer removal on controller dealloc.
                      Thread-safety with special guards against observer resurrection.
                      
                      Single class: FBKVOController
                      DESC
  spec.source       = { :git => 'https://github.com/maximkhatskevich/FBKVOController.git', :tag => "#{s.version}" }
  spec.source_files = 'Src/*.{h,m}'
  spec.requires_arc = true

  spec.ios.deployment_target = '6.0'
  spec.osx.deployment_target = '10.7'
end
