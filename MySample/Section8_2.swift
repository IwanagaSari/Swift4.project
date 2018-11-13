//
//  Section8_2.swift
//  MySample
//
//  Created by 岩永 彩里 on 2018/11/13.
//  Copyright © 2018年 岩永 彩里. All rights reserved.
//

import UIKit

class Section8_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        section8_2_180Page()
        section8_2_181Page()
        section8_2_182Page()
        hello()
        section8_2_184Page()
        section8_2_185Page()
        section8_2_186Page()
    }
    
    func section8_2_180Page() {
        var count:Int?
        var price:Int
        
        price = 250 * (count ?? 2)
        print("\(price)円です。")
        
        count = 3
        price = 250 * (count ?? 2)
        print("\(price)円です。")
        
        var nameArray:[String] = []
        let userName:String = nameArray.first ?? "名無し"
        print(userName)
    }
    func section8_2_181Page() {
        var str:String?
        str = "Swift"
        
        if let msg = str {
            print(msg + "ワールド")
        } else {
            print("ハローワールド")
        }
    }
    
    func section8_2_182Page() {
        var sum = 0
        let dic:[String:Int?] = ["a":23, "b":nil, "c":10, "d":nil]
        
        for (_, value) in dic {
            if let num = value {
                sum += num
            }
        }
        print("数値の合計は\(sum)")
        
        var str:String? = "★☆"
        var repeatString:String = ""
        var i = 0
        while let stamp = str {
            repeatString += stamp
            i += 1
            if (i >= 10){
                break
            }
        }
        print(repeatString)
    }
    //p.183
    func hello(){
        let who = "サクラ"
        var level:Int?
        
        //level = 9 代入しない限りif文以降は実行されない
        guard let theLevel = level else{
            return
        }
        
        if theLevel<10 {
            print("ハロー" + who + "隊員")
        } else {
            print("ハロー" + who + "上級隊員")
        }
    }
    func section8_2_184Page() {
        let year1:String = "2001"
        let year2:String = "2016"
        
        if let startYear = Int(year1), let endYear = Int(year2), startYear < endYear {
            let years = endYear - startYear
            print("\(years)年間です")
        }
    }
    func section8_2_185Page() {
        var balls:[(size:Int, color:String)] = []
        var ballSize = balls.first?.size
        print(ballSize)
        
        balls = [(size:2, color:"red"),(size:4, color:"green")]
        ballSize = balls.first?.size
        print(ballSize)
    }
    
    func section8_2_186Page() {
        var balls:[(size:Int, color:String)] = []
        balls = [(size:2, color:"red"),(size:4, color:"green")]
        if let ballSize = balls.first?.size {
            print(ballSize)
        }
    }


}
