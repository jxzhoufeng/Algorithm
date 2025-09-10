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

    func test() {
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(callBack), userInfo: nil, repeats: true)
    }
    
    @objc func callBack() {
        print(123)
    }
}

