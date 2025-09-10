//
//  ZeroFilledSubarray.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/19.
//

// 2348. 全 0 子数组的数目 https://leetcode.cn/problems/number-of-zero-filled-subarrays
class ZeroFilledSubarray {
    // [1,3,0,0,2,0,0,4] 0,0,0,2,0,0
    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        var totalCount = 0
        var currentCount = 0
        for i in nums {
            if i != 0 {
                currentCount = 0
                continue
            }
            currentCount += 1
            totalCount += currentCount
        }
        return totalCount
    }
}
