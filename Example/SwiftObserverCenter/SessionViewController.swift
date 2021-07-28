//
//  ViewController.swift
//  SwiftObserverCenter
//
//  Created by corotata on 07/28/2021.
//  Copyright (c) 2021 corotata. All rights reserved.
//

import UIKit
import SwiftObserverCenter

class SessionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendNewMessage(_ sender: UIButton) {
        PublishObserver(topic: Topic.self) { topic in
            topic.receiveMsg(msg: "I have publish a new session.", from: "SessionViewController")
        }
        
    }

    deinit {
        RemoveObserver(topic: Topic.self, observer: self)
        print("SessionViewController has removeObserver to Topic")
    }
}


extension SessionViewController {
    func addObserver() {
        print("SessionViewController has addObserver in Topic")
        AddObserver(topic: Topic.self, observer: self)
    }
    
   
}

extension SessionViewController: Topic{
    func receiveMsg(msg: String,from: String) {
        print("SessionViewController - receiveMsg(\(from)：\(msg)")
    }
}
