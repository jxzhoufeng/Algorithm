//
//  MaximumProduct.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 628. 三个数的最大乘积 https://leetcode.cn/problems/maximum-product-of-three-numbers/
class MaximumProduct {
    func maximumProduct(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        let count = nums.count
        let last = nums[count - 3] * nums[count - 2] * nums[count - 1]
        let first = nums[0] * nums[1] * nums[count - 1]
        return max(last, first)
    }
}
