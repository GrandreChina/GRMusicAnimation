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

        let myGRView1 = GRView(rect: CGRectMake(125,100, 30, 30),number: 5)
        self.view.addSubview(myGRView1)
        
        let myGRView2 = GRView(rect: CGRectMake(100, 200, 200, 200), number: 20)
        self.view.addSubview(myGRView2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
