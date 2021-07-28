//
//  DetailViewController.swift
//  SwiftObserverCenter_Example
//
//  Created by Corotata on 2021/7/28.
//  Copyright © 2021 Corotata. All rights reserved.
//

import UIKit
import SwiftObserverCenter
class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addObserver()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendNewMessage(_ sender: UIButton) {
        PublishObserver(topic: Topic.self) { topic in
            topic.receiveMsg(msg: "I have send a new message.", from: "DetailViewController")
        }
    }
    
    deinit {
        RemoveObserver(topic: Topic.self, observer: self)
        print("DetailViewController has removeObserver to Topic")
    }
    
}


extension DetailViewController {
    func addObserver() {
        print("DetailViewController has addObserver in Topic")
        AddObserver(topic: Topic.self, observer: self)
    }
    
    
}

extension DetailViewController: Topic{
    func receiveMsg(msg: String,from: String) {
        print("DetailViewController - receiveMsg(\(from)：\(msg)")
    }
}
