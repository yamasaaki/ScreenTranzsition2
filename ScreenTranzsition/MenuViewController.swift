//
//  MenuView.swift
//  ScreenTranzsition
//
//  Created by Yamada Masaaki on 2018/07/01.
//  Copyright © 2018年 Yamada Masaaki. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController :UIViewController  {
    
    private let menuHeight =  100
    private let menuWidth = 300
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
//    var myView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button2.isHidden = true
        
        // AutoLayout解除        
        // Viewを生成.
//        myView = UIView(frame: CGRect(x: 0, y: 0, width: menuWidth, height: menuHeight))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapOneButton(_ sender: Any) {
        // 画面遷移
        let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "oneView")
        present(next, animated: true, completion: nil)

    }
    
    @IBAction func tapTwoButton(_ sender: Any) {
        // 画面遷移
        let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "twoView")
        present(next, animated: true, completion: nil)
    }
    
    @IBAction func tapThreeButton(_ sender: Any) {
        let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "threeView")
        present(next, animated: true, completion: nil)

    }
    
    
    
    
}
