//
//  PivotInteger.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/26.
//

import Foundation

class PivotInteger {
    
    // 2485. 找出中枢整数 https://leetcode.cn/problems/find-the-pivot-integer/
    // (1+x)×x=(x+n)×(n−x+1)
    func pivotInteger(_ n: Int) -> Int {
        var left = 1
        var right = n
        while left <= right {
            let mid = (left + right) / 2
            let l = (1 + mid) * mid
            let r = (mid + n) * (n - mid + 1)
            if l == r {
                return mid
            } else if l > r {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
}
