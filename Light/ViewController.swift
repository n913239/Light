//
//  ViewController.swift
//  Light
//
//  Created by mikewang on 2017/8/7.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    // true => turn on the light (white)
    var lightOnStatus = true
    func updateLightStatus() {
        // 將lightOnStatus做反向，並修改背景
        lightOnStatus = !lightOnStatus
        if lightOnStatus {
            view.backgroundColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.black
        }
    }
    
    // 產生 0 ~ 6 的亂數，可以用 nextInt()取得新的亂數
    let randomNumber = GKRandomDistribution(lowestValue: 0, highestValue: 6)
    // 儲放目前顏色的Index，範圍從 0 ~ 6
    var colorIndex = 0
    // 儲存顏色與RGB Values的Dictionary
    var rainbowColors = ["Red":[255,0,0],
                         "Orange":[255, 127, 0],
                         "Yellow":[255, 255, 0],
                         "Green":[0, 255, 0],
                         "Blue":[0, 0, 255],
                         "Indigo":[75, 0, 130],
                         "Violet":[148,0,211]]
    // 設定七色彩虹的背景顏色
    func setRainbowColor() {
        // 透過colorIndex索引，來設定取得顏色的索引字串 color
        var color = "Red"
        switch colorIndex {
        case 0: color = "Red"
        case 1: color = "Orange"
        case 2: color = "Yellow"
        case 3: color = "Green"
        case 4: color = "Blue"
        case 5: color = "Indigo"
        case 6: color = "Violet"
        default: color = "Red"
        }
        view.backgroundColor = UIColor(red: CGFloat(rainbowColors[color]![0]),
                                       green: CGFloat(rainbowColors[color]![1]),
                                       blue: CGFloat(rainbowColors[color]![2]), alpha: 1)
        // 將顏色索引+1，如果大於6，就重0開始
        colorIndex += 1
        colorIndex = (colorIndex > 6) ? 0 : colorIndex
    }
    
    // 透過Tap Gesture 來連結Action
    @IBAction func changeBackgroundColor(_ sender: Any) {
        setRainbowColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorIndex =  randomNumber.nextInt()
        setRainbowColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

