//
//  Fib.swift
//  Algorithm
//
//  Created by 周峰 on 2021/9/4.
//

import UIKit

class Fib: NSObject {
    
    // 剑指 Offer 10- I. 斐波那契数列 https://leetcode-cn.com/problems/fei-bo-na-qi-shu-lie-lcof/
    func fib(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        var dp = [Int](repeating: 0, count: n + 1)
        dp[0] = 0
        dp[1] = 1
        for i in 2...n {
            dp[i] = (dp[i - 1] + dp[i - 2]) % 1000000007
        }
        return dp[n]
    }
}
