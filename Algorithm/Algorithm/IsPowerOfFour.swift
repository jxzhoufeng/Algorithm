//
//  IsPowerOfFour.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation

class IsPowerOfFour {
    
    // 342. 4的幂 https://leetcode.cn/problems/power-of-four/
    func isPowerOfFour(_ n: Int) -> Bool {
        var n = n
        while n > 0 && n % 4 == 0 {
            n /= 4
        }
        
        return n == 1
    }
}
