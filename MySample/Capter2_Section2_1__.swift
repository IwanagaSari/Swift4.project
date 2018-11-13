//
//  ViewController.swift
//  MySample
//
//  Created by 岩永 彩里 on 2018/11/06.
//  Copyright © 2018年 岩永 彩里. All rights reserved.
//

import UIKit

class Capter2_Section2_1__: UIViewController {
    
    var msg = "ハロー"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("ありがとう")
        print("実行中：", #function)
        //p.48
        let rate:Double
        let price:Double
        rate = 1.02
        price = 2500 * rate
        print(price)
        
        let rate2:Double
        let price2:Double
        rate2 = 1.02
        price2 = 2500 * rate2
        //price2 = 1000 * rate2
        print(price2)
        
        //p.49 変数
        var name2:String = "ビジター"
        var level:Int = 1, point:Int = 10
        name2 = "鈴木"
        point = 50
        print(name2, point)
        
        var kokugo:Int
        var sansu:Int
        var goukei:Int
        kokugo = 56
        sansu = 67
        goukei = kokugo + sansu
        print(goukei)
        
        //p.50
        let tanaka = 1200
        let price3 = tanaka * 3
        print(price3)
        
        //p.53
        print(msg)
        //p.54
        hello()
        world()
        //p.55
        kuji()
        
    }
    
    func hello() {
        let lang = "Swift"
        let msg = "ハロー" + lang
        print(msg)
    }
    
    func world() {
        let msg = "ワールド"
        print(msg)
    }
    
    func kuji(){
        let num = arc4random_uniform(10)+1
        
        if num>=7 {
            let msg = "あたり"
            print(num, msg)
        } else {
            let msg = "はずれ"
            print(num, msg)
        }
    }
    @IBAction func toSection8_2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toSection8_2Segue", sender: nil)
    }
    

}

