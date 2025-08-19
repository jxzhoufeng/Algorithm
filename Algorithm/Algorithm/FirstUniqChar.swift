//
//  FirstUniqChar.swift
//  Algorithm
//
//  Created by 周峰 on 2023/8/18.
//

import Foundation

class FirstUniqChar {
    
    // 387. 字符串中的第一个唯一字符 https://leetcode.cn/problems/first-unique-character-in-a-string/
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Int]()
        var exceptC = [Character]()
        for (index, c) in s.enumerated() {
            if exceptC.contains(c) { continue }
            if let _ = dict[c] {
                dict.removeValue(forKey: c)
                exceptC.append(c)
            } else {
                dict.updateValue(index, forKey: c)
            }
        }
        return dict.isEmpty ? -1 : dict.values.sorted().first!
    }
}
