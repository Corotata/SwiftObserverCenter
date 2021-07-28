
USER=$(whoami) open /Users/${USER}/Library/Caches/CocoaPods/Pods/External/ SwiftObserverCenter
pod repo push trunk SwiftObserverCenter.podspec --verbose --allow-warnings --use-libraries
