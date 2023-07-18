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
        
        let u = WordPattern()
        let r = u.wordPattern("abab", "dog dog dog dog")
        print(r)
//        var arr = [1,0,1,0,3,12]
//        u.moveZeroes(&arr)
    }
}

