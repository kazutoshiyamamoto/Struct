//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

struct Ball {
    static let madein = "日本"
    static var sozai = "紙"
    var radius: Double = 10.0
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Ball.sozai = "木"
        let ball1 = Ball(radius: 15)
        let ball2 = Ball()
        print(ball1.radius)
        print(ball2.radius)
        print(Ball.madein)
        print(Ball.sozai)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

