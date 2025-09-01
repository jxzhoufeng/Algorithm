//
//  LongestPalindrome.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/19.
//

// 409. 最长回文串 https://leetcode.cn/problems/longest-palindrome
class LongestPalindrome {
    func longestPalindrome(_ s: String) -> Int {
        var length = 0
        var countDict = [Character: Int]()
        for c in s {
            let count = countDict[c] ?? 0
            countDict[c] = count + 1
        }
        for (_ , value) in countDict {
            length += value / 2 * 2
            if (value % 2 == 1 && length % 2 == 0) {
                length += 1
            }
        }
        return length
    }
}
