# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
project 'TinkoffChat.xcodeproj'
target 'TinkoffChat' do
	
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
      end
    end
end
	
# Pods for TinkoffChat
        pod 'Firebase/Firestore'
        pod 'SwiftLint'
        
	target 'TinkoffChatTests' do
		inherit! :search_paths
		use_frameworks!
	end
	target "TinkoffChatUITests" do
		use_frameworks!
  		pod 'iOSSnapshotTestCase'
	end
end
