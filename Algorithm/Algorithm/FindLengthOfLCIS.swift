//
//  FindLengthOfLCIS.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//


// 674. 最长连续递增序列 https://leetcode.cn/problems/longest-continuous-increasing-subsequence/
class FindLengthOfLCIS {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var ans = 1
        var tmp = 1
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                tmp += 1
                ans = max(ans, tmp)
            } else {
                tmp = 1
            }
        }
        return ans
    }
}
