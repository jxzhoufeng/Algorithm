//
//  WordPattern.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation

class WordPattern {
    
    // 290. 单词规律 https://leetcode.cn/problems/word-pattern/
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        // abba dog dog dog dog
        let arrayP = Array(pattern)
        let arrayS = s.split(separator: " ")
        let count = arrayS.count
        guard arrayP.count == count else { return false }
        var dict = [String: Character]()
        for i in 0..<count {
            let c = arrayP[i]
            let ss = String(arrayS[i])
            if let value = dict[ss] {
                if value != c {
                    return false
                }
            } else {
                if let _ = dict.first(where: { (key: String, value: Character) in
                    return value == c
                }) {
                    return false
                }
                dict.updateValue(c, forKey: ss)
            }
        }
        return true
    }
}
