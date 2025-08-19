//
//  IsSubsequence.swift
//  Algorithm
//
//  Created by 周峰 on 2023/8/18.
//

import Foundation

class IsSubsequence {
    
    // 392. 判断子序列 https://leetcode.cn/problems/is-subsequence/
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var p1 = 0, p2 = 0
        let n = s.count, m = t.count
        while p1 < n && p2 < m {
            let sc = s[String.Index(utf16Offset: p1, in: s)]
            let tc = t[String.Index(utf16Offset: p2, in: t)]
            if sc == tc {
                p1 += 1
                p2 += 1
            } else {
                p2 += 1
            }
        }
        return p1 == n
    }
}
