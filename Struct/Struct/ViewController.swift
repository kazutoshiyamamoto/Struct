//
//  ViewController.swift
//  Struct
//
//  Created by home on 2018/05/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // 構造体
    struct Goods {
        let tanka: Int
        let kosu: Int
        // 定価
        var price: Int {
            return tanka * kosu
        }
        // 売値
        func sellprice(nebiki: Int = 0) -> Int {
            // 値引きする
            return price - nebiki * kosu
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 4個入りの商品を作る
        let myGoods = Goods(tanka: 700, kosu: 4)
        // 販売価格（1個10円引き）
        let selling_price = myGoods.sellprice(nebiki: 10)
        // 確認
        print("1個\(myGoods.tanka)円、\(myGoods.kosu)個入り、定価\(myGoods.price)円")
        print("販売価格\(selling_price)円")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

