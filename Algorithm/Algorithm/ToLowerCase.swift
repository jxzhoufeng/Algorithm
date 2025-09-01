//
//  ToLowerCase.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 709. 转换成小写字母 https://leetcode.cn/problems/to-lower-case/
class ToLowerCase {
    func toLowerCase(_ s: String) -> String {
        var ans = ""
        for c in s {
            let asc = c.asciiValue ?? 0
            if asc >= 65 && asc <= 90 {
                let newc = Character(UnicodeScalar(asc + 32))
                ans.append(String(newc))
            } else {
                ans.append(String(c))
            }
        }
        return ans
    }
}
