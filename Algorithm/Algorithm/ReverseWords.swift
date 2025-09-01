//
//  ReverseWords.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 557. 反转字符串中的单词 III https://leetcode.cn/problems/reverse-words-in-a-string-iii/
class ReverseWords {
    // "Let's take LeetCode contest"
    func reverseWords(_ s: String) -> String {
        var ans = ""
        var tmp = ""
        for c in s.reversed() {
            if c == " " {
                ans = " " + tmp + ans
                tmp = ""
            } else {
                tmp += "\(c)"
            }
        }
        return tmp + ans
    }
}
