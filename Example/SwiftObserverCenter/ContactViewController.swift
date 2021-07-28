//
//  ChatViewController.swift
//  SwiftObserverCenter_Example
//
//  Created by Corotata on 2021/7/28.
//  Copyright © 2021 Corotata. All rights reserved.
//

import UIKit
import SwiftObserverCenter

class ContactViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendNewMessage(_ sender: UIButton) {
        PublishObserver(topic: Topic.self) { topic in
            topic.receiveMsg(msg: "I have add a new friend.", from: "ContactViewController")
        }
    }
    
    deinit {
        RemoveObserver(topic: Topic.self, observer: self)
        print("ContactViewController has removeObserver in Topic")
    }
}


extension ContactViewController {
    func addObserver() {
        print("ContactViewController has addObserver to Topic")
        AddObserver(topic: Topic.self, observer: self)
    }
    
    
}




extension ContactViewController: Topic{
    func receiveMsg(msg: String,from: String) {
        print("ContactViewController - receiveMsg(\(from)：\(msg)")
    }
}
