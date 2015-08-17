//
//  ViewController.swift
//  adpic
//
//  Created by yunjoy on 15/8/17.
//  Copyright (c) 2015年 yunjoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var frame = CGRectMake(0, 40, UIScreen.mainScreen().bounds.width, 200)
        var urls = [String]()
        urls.append("http://cc.cocimg.com/api/uploads/20150803/1438584968370799.jpg")
        urls.append("http://img3.cache.netease.com/photo/0003/2015-06-30/ATCDPPU800AJ0003.jpg")
        urls.append("http://www.sinaimg.cn/dy/slidenews/4_img/2015_11/704_1575962_849639.jpg")
        urls.append("http://cc.cocimg.com/api/uploads/20150803/1438584353419212.png")
        //        urls.append("http://cc.cocimg.com/api/uploads/20150803/1438584968370799.jpg")
        //         urls.append("http://cc.cocimg.com/api/uploads/20150803/1438584968370799.jpg")
        
        var child = ADScrollerView.adScrollViewWithFrame(frame, imageLinkUrl: urls, pageControlShowStyle: UIPageControlShowStyle.UIPageControlShowStyleLeft)
        child!.backgroundColor = UIColor.redColor()
        self.view.addSubview(child!)
        
        var adScrollerView = ADView.adScrollViewWithFrame(CGRectMake(0, 250, UIScreen.mainScreen().bounds.width, 200),imageLinkUrl:urls,placeHoderImageName:"placeHolder.jpg" ,pageControlShowStyle:UIPageControlShowStyle.UIPageControlShowStyleCenter)!
        self.view.addSubview(adScrollerView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

