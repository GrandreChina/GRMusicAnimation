//
//  MyViewController.swift
//  AddSubViewByCode
//
//  Created by Grandre on 16/1/23.
//  Copyright © 2016年 革码者. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myView = MyView(rect: CGRectMake(125,100, 30, 30),number: 5)
        
        self.view.addSubview(myView)
        
        let myView2 = MyView(rect: CGRectMake(100, 200, 200, 200), number: 20)
        self.view.addSubview(myView2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
