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
        let u = SortMatrix()
        let r = u.sortMatrix([[1,7,3],[9,8,2],[4,5,6]])
        print("result：\(r)")
    }
}

