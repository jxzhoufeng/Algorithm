//
//  IsPowerOfTwo.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/14.
//

import Foundation

class IsPowerOfTwo {
    
    // 231. 2 的幂 https://leetcode.cn/problems/power-of-two/
    func isPowerOfTwo(_ n: Int) -> Bool {
        var n = n
        while n > 0 && n % 2 == 0 {
            n /= 2
        }
        return n == 1
    }
    
    func isPowerOfTwo2(_ n: Int) -> Bool {
        n > 0 && (n & (n - 1) == 0)
    }
}
