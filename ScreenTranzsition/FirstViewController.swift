//
//  ViewController.swift
//  ScreenTranzsition
//
//  Created by Yamada Masaaki on 2018/07/01.
//  Copyright © 2018年 Yamada Masaaki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var myView: UIView!
    var flag: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view表示・非表示のためのフラグ.
        flag = false
        // Viewを生成.
        myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        // myViewの背景を緑色に設定.
        myView.backgroundColor = UIColor.green
        
        // 透明度を設定.
//        myView.alpha = 0.5
        
        // 位置を中心に設定.
        myView.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
        
        // myViewを非表示.
        myView.isHidden = true

        // myViewをviewに追加.
        self.view.addSubview(myView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapMenuButton(_ sender: Any) {
        NSLog("aa")
        // flagがfalseならmyViewを表示.
        if !flag {
            // myViewを表示.
            myView.isHidden = false
            
            flag = true
        }
            // flagがtrueならmyViewを非表示.
        else {
            
            // myViewを非表示.
            myView.isHidden = true
            
            flag = false
        }
    }
    
}

