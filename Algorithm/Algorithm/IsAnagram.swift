//
//  IsAnagram.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/14.
//

import Foundation

class IsAnagram {
    
    // 242. 有效的字母异位词 https://leetcode.cn/problems/valid-anagram/
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [Character: Int]()
        for c in s {
            let val = dict[c] ?? 0
            dict.updateValue(val + 1, forKey: c)
        }
        for c in t {
            let val = dict[c] ?? 0
            dict.updateValue(val - 1, forKey: c)
        }
        for (_, value) in dict {
            if value != 0 {
                return false
            }
        }
        return true
    }
}
