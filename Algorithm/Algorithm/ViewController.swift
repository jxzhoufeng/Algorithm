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
        
        let u = RotateArray()
        var arr = [[1,2,3],[4,5,6],[7,8,9]]
        let r = u.rotate(&arr)
        print(r)
    }


}

