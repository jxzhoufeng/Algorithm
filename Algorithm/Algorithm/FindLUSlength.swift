//
//  FindLUSlength.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 521. 最长特殊序列 Ⅰ https://leetcode.cn/problems/longest-uncommon-subsequence-i/
class FindLUSlength {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        if a == b {
            return -1
        } else {
            return max(a.count, b.count)
        }
    }
}
