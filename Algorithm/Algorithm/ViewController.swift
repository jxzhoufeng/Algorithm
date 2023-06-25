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
        
        let u = RemoveDuplicates()
        var nums1 = [1]
        u.merge(&nums1, 1, [], 0)
//        print(r)
    }
}

