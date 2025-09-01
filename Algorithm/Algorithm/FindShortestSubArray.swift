//
//  FindShortestSubArray.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 697. 数组的度 https://leetcode.cn/problems/degree-of-an-array/
class FindShortestSubArray {
    // [1,2,2,3,1]
    func findShortestSubArray(_ nums: [Int]) -> Int {
        // 数组里分别是 出现次数，首次出现index，最后一次出现的index
        var dict = [Int: [Int]]()
        for (i, num) in nums.enumerated() {
            if var v = dict[num] {
                let count = v[0]
                v[0] = count + 1
                v[2] = i
                dict[num] = v
            } else {
                dict[num] = [1, i, i]
            }
        }
        var currentMaxCount = 0
        var ans = 0
        for (_, v) in dict {
            if v[0] > currentMaxCount {
                currentMaxCount = v[0]
                ans = v[2] - v[1] + 1
            } else if v[0] == currentMaxCount {
                ans = min(ans, v[2] - v[1] + 1)
            }
        }
        return ans
    }
}
