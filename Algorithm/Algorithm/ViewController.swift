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
        var nums = [2,9,3,1]
        u.nextPermutation(&nums)
        print(123)
    }


}

