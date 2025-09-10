//
//  PivotIndex.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 724. 寻找数组的中心下标 https://leetcode.cn/problems/find-pivot-index/
class PivotIndex {
    // [1,7,3,6,5,6]
    func pivotIndex(_ nums: [Int]) -> Int {
        var preSum = Array(repeating: 0, count: nums.count)
        for (i, num) in nums.enumerated() {
            if i == 0 {
                preSum[i] = num
            } else {
                preSum[i] = num + preSum[i - 1]
            }
        }
        var pre = 0
        var index = 0
        let count = preSum.count
        while index < preSum.count {
            let v = preSum[index]
            if preSum[count - 1] - v == pre {
                return index
            } else {
                pre = v
            }
            index += 1
        }
        return -1
    }
}
