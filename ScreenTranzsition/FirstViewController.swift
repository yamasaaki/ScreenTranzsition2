//
//  ViewController.swift
//  ScreenTranzsition
//
//  Created by Yamada Masaaki on 2018/07/01.
//  Copyright © 2018年 Yamada Masaaki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    var myView: UIView!
    var flag: Bool!
    
    // Tableで使用する配列を設定する
    private let myItems: NSArray = ["TEST1", "TEST2", "TEST3"]
    private var myTableView: UITableView!
    
    private let menuHeight = 100
    private let menuWidth = 300

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view表示・非表示のためのフラグ.
        flag = false
        // Viewを生成.
        myView = UIView(frame: CGRect(x: 0, y: 0, width: menuWidth, height: menuHeight))
        
        // Viewの高さと幅を取得する.
        let displayWidth: CGFloat = CGFloat(menuWidth)
        let displayHeight: CGFloat = CGFloat(menuHeight)
        
        // TableViewの生成(Status barの高さをずらして表示).
        myTableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight))
        
        // Cell名の登録をおこなう.
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        // DataSourceを自身に設定する.
        myTableView.dataSource = self
        
        // Delegateを自身に設定する.
        myTableView.delegate = self
        
        // Viewに追加する.
        myView.addSubview(myTableView)
        
        // myViewの背景を緑色に設定.
        myView.backgroundColor = UIColor.green
        
        // 透明度を設定.
//        myView.alpha = 0.5
        
        // 位置を中心に設定.
//        myView.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
        myView.layer.position = CGPoint(x: self.view.frame.width/2, y: 100)

        
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
        
        // 画面遷移
//        let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "twoView")
//        present(next, animated: true, completion: nil)
        
    }
    
    
    /*
     Cellが選択された際に呼び出される
     */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myItems[indexPath.row])")
        
        if (indexPath.row == 0) {
            
        } else if (indexPath.row == 1) {
            // 画面遷移
            let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "twoView")
            present(next, animated: true, completion: nil)

        } else if (indexPath.row == 2) {
            let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "threeView")
            present(next, animated: true, completion: nil)
        }
        // 画面遷移
//        let next: UIViewController = storyboard!.instantiateViewController(withIdentifier: "twoView")
//        present(next, animated: true, completion: nil)

    }
    
    /*
     Cellの総数を返す.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    /*
     Cellに値を設定する
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 再利用するCellを取得する.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        // Cellに値を設定する.
        cell.textLabel!.text = "\(myItems[indexPath.row])"
        
        return cell
    }
}

