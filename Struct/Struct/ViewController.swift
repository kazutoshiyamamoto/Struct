//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

// クラス
class BoxClass {
    var size: String = "M"
    var color: String = "red"
}

// 構造体
struct BoxStruct {
    var size: String = "M"
    var color: String = "red"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // クラスの場合
        let cBox1 = BoxClass()
        let cBox2 = cBox1
        cBox2.color = "green"
        
        // 構造体の場合
        let sBox1 = BoxStruct()
        var sBox2 = sBox1
        sBox2.color = "green"
        
        // 値の出力
        print("cBox1:\(cBox1.size) \(cBox1.color)")
        print("cBox2:\(cBox2.size) \(cBox2.color)")
        print("sBox1:\(sBox1.size) \(sBox1.color)")
        print("sBox2:\(sBox2.size) \(sBox2.color)")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

