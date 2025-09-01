//
//  RepeatedSubstringPattern.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/19.
//

// 459. 重复的子字符串 https://leetcode.cn/problems/repeated-substring-pattern
class RepeatedSubstringPattern {
    // abcabcabcabc
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let s1 = s + s
        var sub = s1.substring(fromIndex: 1)
        sub = sub.substring(toIndex: sub.length - 1)
        return sub.contains(s)
    }
}
