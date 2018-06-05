//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

protocol Monster {
    var monsterName: String {get}
    var hp: Int {get set}
    mutating func updateHP(pt: Int)
}

struct Bokemon: Monster {
    // プロパティ（プロトコル準拠）
    private(set) var monsterName: String
    var hp: Int
    // hpを変更するメソッド
    mutating func updateHP(pt: Int) {
        hp += pt
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

