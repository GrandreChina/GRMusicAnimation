//
//  MyView.swift
//  AddSubViewByCode
//
//  Created by Grandre on 16/1/23.
//  Copyright © 2016年 革码者. All rights reserved.
//

import UIKit

class MyView: UIView {   
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        self.layer.backgroundColor = UIColor.greenColor().CGColor
//        self.layer.frame = CGRectMake(100, 100, 200, 200)
        
    }
//添加指定构造器
    init(rect: CGRect,number: Int){
        super.init(frame: rect)
        self.layer.backgroundColor = UIColor.clearColor().CGColor
        self.addSubviews(number)
        self.animate(number)
        
    }
    
    var colorArr2:[UIColor]!
    
    func addSubviews(number柱数: Int){

        let 柱宽 = self.frame.width * 7/8 * 1/CGFloat(number柱数)
        let 杠宽 = self.frame.width * 1/8 * 1/CGFloat(number柱数+1)
        
        colorArr2 = [(111,222,68),(177,137,227),(208,223,137),(208,69,81),(41,191,173)].map { (r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor in
            
            UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
        }
        
        
        for i in (1...number柱数){
            let x = 杠宽 * CGFloat(i) + 柱宽 * CGFloat(i-1)

            let sb = UIView(frame: CGRectMake(x,0,柱宽,self.frame.height))
            sb.backgroundColor = colorArr2[(i-1)%5]
            sb.tag = i
            self.addSubview(sb)
        }
    }
    
    func animate(number柱数: Int){
        self.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            for i in (1...number柱数){
                
                self.viewWithTag(i)?.frame.size.height = CGFloat(random())%self.frame.size.height
                self.viewWithTag(i)?.backgroundColor = self.colorArr2[random()%self.colorArr2.count]
            }
            
            }) { (finish) -> Void in
                self.animate(number柱数)

                }
        
    }
    

}
