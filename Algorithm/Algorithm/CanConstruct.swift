//
//  CanConstruct.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/18.
//

import Foundation

class CanConstruct {
    
    //  383. 赎金信 https://leetcode.cn/problems/ransom-note/
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazines = Array(magazine)
        for r in ransomNote {
            if let index = magazines.firstIndex(of: r) {
                magazines.remove(at: index)
            } else {
                return false
            }
        }
        return true
    }
}
