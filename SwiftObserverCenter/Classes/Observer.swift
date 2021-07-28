//
//  Observer.swift
//  SwiftObserverCenter
//
//  Created by Corotata on 2021/7/2.
//

import Foundation

/// WeakReference
class Weak<T: AnyObject> {
    weak var value: T?
    init(value: T) {
        self.value = value
    }
}

public class Observer<T: AnyObject> {
    var observerProtocol: T.Type
    var cacheList:NSMutableArray = NSMutableArray()
    init(topic:T.Type) {
        self.observerProtocol = topic
    }
    
    func addObserver(observer: T) {
        cacheList.add(Weak<T>(value: observer))
    }

    func removeObserver(observer: T)  {
        cacheList.remove(observer)
    }
    
    public func publishObserver(action:@escaping (_ t:T)->())  {
        let needRemoveArray =  NSMutableArray()
        for t in cacheList {
            let weakModel = t as!  Weak<T>
            
            let value = weakModel.value
            if(value == nil) {
                needRemoveArray.add(t)
            }else {
                if(Thread.isMainThread) {
                    action(value!)
                }else {
                    DispatchQueue.main.async {
                        action(value!)
                    }
                }
            }
        }
        if(needRemoveArray.count > 0) {
            cacheList.removeObjects(in: needRemoveArray as! [Any])
        }
        
    }
}
