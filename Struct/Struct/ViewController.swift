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
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

