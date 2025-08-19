//
//  FindTheDifference.swift
//  Algorithm
//
//  Created by 周峰 on 2023/8/18.
//

import Foundation

class FindTheDifference {
    
    // 389. 找不同 https://leetcode.cn/problems/find-the-difference/
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var dict = [Character: Int]()
        for c in t {
            let value = dict[c] ?? 0
            dict.updateValue(value + 1, forKey: c)
        }
        for c in s {
            let value = dict[c] ?? 0
            dict.updateValue(value - 1, forKey: c)
        }
        for (key, value) in dict {
            if value != 0 {
                return key
            }
        }
        return Character("")
    }
}
