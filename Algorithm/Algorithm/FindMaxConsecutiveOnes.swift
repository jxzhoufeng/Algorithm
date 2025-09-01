//
//  FindMaxConsecutiveOnes.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 485. 最大连续 1 的个数 https://leetcode.cn/problems/max-consecutive-ones/
class FindMaxConsecutiveOnes {
    // [1,1,0,1,1,1]
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var res = 0
        var maxRes = 0
        for num in nums {
            if num == 1 {
                res += 1
                maxRes = res > maxRes ? res : maxRes
            } else {
                res = 0
            }
        }
        return maxRes
    }
}
