//
//  BalancedStringSplit.swift
//  Algorithm
//
//  Created by 周峰 on 2021/9/7.
//

import UIKit

class BalancedStringSplit: NSObject {
    
    // 1221. 分割平衡字符串 https://leetcode-cn.com/problems/split-a-string-in-balanced-strings/
    func balancedStringSplit(_ s: String) -> Int {
        var result = 0
        var RCount = 0
        var LCount = 0
        for c in s {
            if c == "R" {
                RCount += 1
            }else {
                LCount += 1
            }
            if RCount == LCount {
                result += 1
                RCount = 0
                LCount = 0
            }
        }
        return result
    }
}
