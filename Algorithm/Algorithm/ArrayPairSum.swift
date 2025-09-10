//
//  ArrayPairSum.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 561. 数组拆分 https://leetcode.cn/problems/array-partition/
class ArrayPairSum {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var result = 0
        let nums = nums.sorted()
        var n = 1
        while n < nums.count {
            result += min(nums[n - 1], nums[n])
            n += 2
        }
        return result
    }
}
