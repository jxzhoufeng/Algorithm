//
//  FibNumber.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 509. 斐波那契数 https://leetcode.cn/problems/fibonacci-number/
class FibNumber {
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        var first = 0
        var second = 1
        var current = 2
        while current < n {
            current += 1
            let tmp = first
            first = second
            second += tmp
        }
        return first + second
    }
}
