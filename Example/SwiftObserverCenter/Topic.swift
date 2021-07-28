//
//  Topic.swift
//  ObserverCenter_Example
//
//  Created by Corotata on 2021/7/2.
//  Copyright © 2021 Corotata. All rights reserved.
//

import Foundation
import SwiftObserverCenter

@objc protocol Topic {
    func receiveMsg(msg: String,from: String)
}

