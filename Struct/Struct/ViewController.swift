//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

struct Box {
    let width: Int
    let height: Int
    let size: String
    
    // イニシャライザ
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
        // sizeを設定
        if (width + height) < 250 {
            size = "M"
        } else {
            size = "L"
        }
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let box1 = Box(width: 120, height: 80)
        let box2 = Box(width: 150, height: 120)
        print(box1)
        print(box2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

