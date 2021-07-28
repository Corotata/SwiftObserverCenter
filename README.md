# SwiftObserverCenter

[![CI Status](http://img.shields.io/travis/corotata/SwiftObserverCenter.svg?style=flat)](https://travis-ci.org/corotata/SwiftObserverCenter)
[![Version](https://img.shields.io/cocoapods/v/SwiftObserverCenter.svg?style=flat)](http://cocoapods.org/pods/SwiftObserverCenter)
[![License](https://img.shields.io/cocoapods/l/SwiftObserverCenter.svg?style=flat)](http://cocoapods.org/pods/SwiftObserverCenter)
[![Platform](https://img.shields.io/cocoapods/p/SwiftObserverCenter.svg?style=flat)](http://cocoapods.org/pods/SwiftObserverCenter)

**SwiftObserverCenter** is a notification centers built based on protocol, which provides  better use experience than the Apple Native **NSNotificationCenter**.


## Example
### Defind Topic and method
Because of Generics AnyObject, protocol must use @objc now,If you have a better way, please let me know.
```
@objc protocol Topic {
    func receiveMsg(msg: String,from: String)
}
```
### Add Observer
```
AddObserver(topic: Topic.self, observer: self);
```
### Publish Observer
```
PublishObserver(topic: Topic.self) { topic in
    topic.receiveMsg(msg: "你今天摸鱼了吗？", from: "张三")
}
```
### Remove Observer
```
RemoveObserver(topic: Topic.self, observer: self)
```

## Installation

To install it, simply add the following line to your Podfile:

```ruby
pod "SwiftObserverCenter"
```

## Author

corotata, corotata@qq.com

## License

SwiftObserverCenter is available under the MIT license. See the LICENSE file for more info.
