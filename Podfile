# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'

target 'GueddSinkng' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GueddSinkng
pod 'SnapKit'
pod 'iCarousel'
pod "IQKeyboardManager"
pod 'Hero'
pod "Player"
pod "SwiftyStoreKit"

pod 'Alamofire'
end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      # Fix Swift optimization level warning for previews (optional)
      config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone' if config.name == 'Debug'
    end
  end
end
