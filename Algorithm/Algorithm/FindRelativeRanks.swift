//
//  FindRelativeRanks.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 506. 相对名次 https://leetcode.cn/problems/relative-ranks/
class FindRelativeRanks {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var result = Array(repeating: "", count: score.count)
        let special = ["Gold Medal", "Silver Medal", "Bronze Medal"]
        var dict = [Int : Int]()
        for (index, s) in score.enumerated() {
            dict[s] = index
        }
        let arr = dict.sorted { $0.key > $1.key }
        for (i, a) in arr.enumerated() {
            if i >= 3 {
                result[a.value] = "\(i + 1)"
            } else {
                result[a.value] = special[i]
            }
        }
        return result
    }
}
