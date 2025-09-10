//
//  ViewController.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/9.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let u = FindNumberOfLIS()
//        var arr: [Character] = ["a","a","b","b","c","c","c"]
        let r = u.findNumberOfLIS([2,2,2,2,2])
        print(r)
        
    }
}

