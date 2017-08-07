//
//  ViewController.swift
//  Light
//
//  Created by mikewang on 2017/8/7.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit

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
    
    // 透過Tap Gesture 來連結Action
    @IBAction func changeBackgroundColor(_ sender: Any) {
        updateLightStatus()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

