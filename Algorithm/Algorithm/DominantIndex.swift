//
//  DominantIndex.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 747. 至少是其他数字两倍的最大数 https://leetcode.cn/problems/largest-number-at-least-twice-of-others/
class DominantIndex {
    func dominantIndex(_ nums: [Int]) -> Int {
        let count = nums.count
        let numsSort = nums.sorted()
        if numsSort[count - 2] * 2 <= numsSort[count - 1] {
            return nums.firstIndex(of: numsSort[count - 1]) ?? -1
        }
        return -1
    }
}
