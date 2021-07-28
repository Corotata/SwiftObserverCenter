
USER=$(whoami) open /Users/${USER}/Library/Caches/CocoaPods/Pods/External/ SwiftObserverCenter
pod trunk push ./SwiftObserverCenter.podspec --verbose --allow-warnings --use-libraries
