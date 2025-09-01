//
//  FindRestaurant.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 599. 两个列表的最小索引总和 https://leetcode.cn/problems/minimum-index-sum-of-two-lists/
class FindRestaurant {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var result = [String]()
        var min = Int.max
        for (i, s) in list1.enumerated() {
            if let index = list2.firstIndex(of: s) {
                if min > index + i {
                    min = index + i
                    result = [s]
                } else if min == index + i {
                    result.append(s)
                }
            }
        }
        return result
    }
}
