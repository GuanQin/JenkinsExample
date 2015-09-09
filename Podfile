# Uncomment this line to define a global platform for your project
# platform :ios, '6.0'

use_frameworks!

def testing_pods
	# If you're using Xcode 7 / Swift 2
    pod 'Quick', '~> 0.6.0'
    pod 'Nimble', '2.0.0-rc.3'

    # If you're using Xcode 6 / Swift 1.2
    # pod 'Quick', '~> 0.3.0'
    # pod 'Nimble', '~> 1.0.0'
end

target 'JenkinsExample' do
    pod 'RxSwift', '~> 2.0-alpha'
    pod 'RxCocoa', '~> 2.0-alpha'
    pod 'RxBlocking', '~> 2.0-alpha'
    pod 'Alamofire', :git => 'https://github.com/Alamofire/Alamofire.git', :branch => 'swift-2.0'
end

target 'JenkinsExampleTests' do
	testing_pods
end

target 'JenkinsExampleUITests' do
	testing_pods
end

