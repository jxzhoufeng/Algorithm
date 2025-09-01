//
//  CheckPerfectNumber.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 507. 完美数 https://leetcode.cn/problems/perfect-number/
class CheckPerfectNumber {
    func checkPerfectNumber(_ num: Int) -> Bool {
        var allDiverSum = 0
        var i = 1
        while i < num {
            if num % i == 0 {
                allDiverSum += i
            }
            i += 1
        }
        if num == allDiverSum {
            return true
        }
        return false
    }
}
