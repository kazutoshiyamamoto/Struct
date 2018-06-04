//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

struct Stock {
    var name: String
    var data: [String: Int] = [:]
    // イニシャライザ
    init(name: String) {
        self.name = name
    }
    // サブスクリプト
    subscript(color: String, size: Double) -> Int {
        //値の取り出し
        get {
            let key = color + String(size)
            if let value = data[key] {
                return value
            } else {
                return 0
            }
        }
        // 値の設定
        set {
            let key = color + String(size)
            data[key] = newValue
        }
    }
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

