//
//  FindLHS.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 594. 最长和谐子序列 https://leetcode.cn/problems/longest-harmonious-subsequence/
class FindLHS {
    func findLHS(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }
        var ans = 0
        print(dict)
        for (k, v) in dict {
            if let t = dict[k + 1] {
                ans = max(ans, v + t)
            }
        }
        return ans
    }
}
