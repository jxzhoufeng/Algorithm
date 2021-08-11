//
//  ArithmeticSlices.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/10.
//

import UIKit


class ArithmeticSlices: NSObject {
    
    // 413. 等差数列划分 https://leetcode-cn.com/problems/arithmetic-slices/
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return 0
        }
        var current = 0
        var result = 0
        for i in 2..<nums.count {
            if nums[i - 1] - nums[i - 2] == nums[i] - nums[i - 1] {
                current += 1
            }else {
                current = 0
            }
            result += current
        }
        
        return result
    }
    
    // 446. 等差数列划分 II - 子序列 https://leetcode-cn.com/problems/arithmetic-slices-ii-subsequence/
    func numberOfArithmeticSlices2(_ nums: [Int]) -> Int {
        var dp = [[Int: Int]]()
        for _ in 0..<nums.count {
            dp.append([Int : Int]())
        }
        for i in 1..<nums.count {
            for j in 0..<i {
                let diff = nums[i] - nums[j]
//                var di = dp[i]
//                let dj = dp[j]
                var di = dp[i][diff] ?? 0
                di += (dp[j][diff] ?? 0 + 1)
                dp[i][diff] = di
            }
        }
        return 0
    }
    
    // 是否是等差数列
    func isArithmeticSlices(_ nums: [Int]) -> Bool {
        if nums.count < 3 {
            return false
        }
        let diff = nums[0] - nums[1]
        for i in 2..<nums.count {
            if nums[i-1] - nums[i] != diff {
                return false
            }
        }
        return true
    }
}
