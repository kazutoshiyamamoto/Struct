//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

// 構造体を定義する
struct ColorBox {
    var width: Int
    var height: Int
    var color: String
}

// 構造体を定義する（プロパティに初期値がある）
struct WhiteBox {
    var width: Int = 100
    var height: Int = 100
    var color: String = "white"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 構造体を作って変数に入れる
        var redBox = ColorBox(width: 100, height: 100, color: "red")
        print("幅\(redBox.width), 高さ\(redBox.height), 色\(redBox.color)")
        
        // プロパティの値を変更する
        redBox.width = 90
        redBox.color = "blue"
        print("幅\(redBox.width), 高さ\(redBox.height), 色\(redBox.color)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

