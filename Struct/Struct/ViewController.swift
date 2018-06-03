//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

struct Line {
    // 両端の座標
    var p1: Point
    var p2: Point
    
    // 両端を動かして線を並行移動する
    mutating func move(h: Double, v: Double) {
        p1.x += h
        p1.y += v
        p2.x += h
        p2.y += v
    }
}

// 点の構造体
struct Point {
    var x: Double
    var y: Double
}


class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 両端の2点
        let point1 = Point(x: 100, y: 100)
        let point2 = Point(x: 300, y: 200)
        // 2点を結ぶ直線
        var theLine = Line(p1: point1, p2: point2)
        // 座標の確認
        print("移動前のp1\(theLine.p1)")
        print("移動前のp2\(theLine.p2)")
        print("-----------")
        
        // 平行移動する
        theLine.move(h: 50, v: 60)
        // 座標の確認
        print("移動後のp1\(theLine.p1)")
        print("移動後のp2\(theLine.p2)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

