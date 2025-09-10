//
//  GuessNumber.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/18.
//

import Foundation

class GuessNumber {
    
    // 374. 猜数字大小 https://leetcode.cn/problems/guess-number-higher-or-lower/
    func guessNumber(_ n: Int) -> Int {
        var l = 0, r = n
        while l <= n {
            let mid = l + (r - l) / 2
            if guess(mid) == -1 {
                r = mid - 1
            } else if guess(mid) == 1 {
                l = mid + 1
            } else {
                return mid
            }
        }
        return -1
    }
    
    func guess(_ num: Int) -> Int {
        return -1
    }
}
