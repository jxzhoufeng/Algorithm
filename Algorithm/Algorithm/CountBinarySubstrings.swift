//
//  CountBinarySubstrings.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 696. 计数二进制子串 https://leetcode.cn/problems/count-binary-substrings/
class CountBinarySubstrings {
    // 00110011
    func countBinarySubstrings(_ s: String) -> Int {
        var ans = 0
        var last = 0
        var tmp = 1
        let s = Array(s)
        for i in 1..<s.count {
            if s[i - 1] == s[i] {
                tmp += 1
            } else {
                ans += min(tmp, last)
                last = tmp
                tmp = 1
            }
        }
        ans += min(tmp, last)
        return ans
    }
}

