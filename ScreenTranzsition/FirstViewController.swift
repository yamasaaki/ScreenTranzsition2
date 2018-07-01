//
//  ViewController.swift
//  ScreenTranzsition
//
//  Created by Yamada Masaaki on 2018/07/01.
//  Copyright © 2018年 Yamada Masaaki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPopoverPresentationControllerDelegate{


    override func viewDidLoad() {
        super.viewDidLoad()


        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapMenuButton(_ sender: Any) {
        NSLog("aa")
        
        
        // menuViewController.switchScreen()
    }
    
    @IBAction func tapTestButton(_ sender: Any) {
        // 画面遷移
        let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "twoView")
        present(next, animated: true, completion: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.preferredContentSize = CGSize(width: Menu.width, height: Menu.height)
        
        let popView = segue.destination.popoverPresentationController
        popView!.delegate = self
    }
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }

    

}

