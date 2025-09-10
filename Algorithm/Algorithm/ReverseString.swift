//
//  ReverseString.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation

class ReverseString {
    
    // 344. 反转字符串 https://leetcode.cn/problems/reverse-string/
    func reverseString(_ s: inout [Character]) {
        var l = 0, r = s.count - 1
        while l <= r {
            s.swapAt(l, r)
            l += 1
            r -= 1
        }
    }
}
