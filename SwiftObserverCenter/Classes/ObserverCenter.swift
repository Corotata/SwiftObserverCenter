//
//  Observer.swift
//  SwiftObserverCenter
//
//  Created by Corotata on 2021/7/2.
//

import Foundation

/// Quick Method to Use ObserverCenter.instance.addObserver()
public func AddObserver<T: AnyObject>(topic: T.Type,observer: T)  {
    ObserverCenter.instance.addObserver(topic: topic, observer: observer)
}

/// Quick Method to Use ObserverCenter.instance.removeObserver()
public func RemoveObserver<T: AnyObject>(topic: T.Type,observer: T)  {
    ObserverCenter.instance.removeObserver(topic: topic, observer: observer)
}

/// Quick Method to Use ObserverCenter.instance.publishObserver()
public func PublishObserver<T: AnyObject>(topic: T.Type,action:@escaping (_ t:T)->()) {
    ObserverCenter.instance.publishObserver(topic: topic, action: action)
}


/// ObserverCenter is singleton Class
public class ObserverCenter {
    
    public static let instance = ObserverCenter()
    var cache:[String: Any] = Dictionary()
    
    private init() {}
    public func getObservers<T>(topic: T.Type) -> Observer<T>  {
        return getObservers(topic: topic, forKey:"observers.center.default.key")
    }
    
    public func getObservers<T>(topic: T.Type,forKey: String) -> Observer<T> {
        let key = "\(topic.self)-\(forKey)"
        var observer = self.cache[key];
        if (nil == observer) {
            observer = Observer<T>(topic:topic);
            cache[key] = observer
        }
        return observer as! Observer<T>
    }
    
    public func addObserver<T: AnyObject>(topic: T.Type,observer: T) {
        getObservers(topic: topic).addObserver(observer: observer)
    }

    public func removeObserver<T: AnyObject>(topic: T.Type,observer: T) {
        getObservers(topic: topic).removeObserver(observer: observer)
    }
    
    public func publishObserver<T: AnyObject>(topic: T.Type,action:@escaping (_ t:T)->()) {
        getObservers(topic: topic).publishObserver(action:action)
    }
    

}
