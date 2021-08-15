//
//  MergeArray.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/15.
//

import UIKit

class MergeArray: NSObject {
    // 56. 合并区间 https://leetcode-cn.com/problems/merge-intervals/
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var newIntrevals = intervals
        newIntrevals.sort { (i1, i2) -> Bool in
            return i1[0] < i2[0]
        }
        var merged = [[Int]]()
        for i in 0..<newIntrevals.count {
            let L = newIntrevals[i][0], R = newIntrevals[i][1];
            if (merged.count == 0 || merged[merged.count - 1][1] < L) {
                merged.append([L, R]);
            } else {
                merged[merged.count - 1][1] = max(merged[merged.count - 1][1], R);
            }
        }
        return merged
    }
    
    // 57. 插入区间 https://leetcode-cn.com/problems/insert-interval/
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var arr = intervals
        arr.append(newInterval)
        return merge(arr)
    }
}
