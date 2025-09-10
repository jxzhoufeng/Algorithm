//
//  ReverseVowels.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/19.
//

import UIKit

class ReverseVowels: NSObject {
    
    // 345. 反转字符串中的元音字母 https://leetcode-cn.com/problems/reverse-vowels-of-a-string/
    func reverseVowels(_ s: String) -> String {
        var left = 0
        var right = s.count - 1
        let vowels: [String.Element] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var chars = Array(s)
        while left < right {
            let lc = chars[left]
            let rc = chars[right]
            if vowels.contains(lc) && vowels.contains(rc) {
                chars[left] = rc
                chars[right] = lc
                left += 1
                right -= 1
            }else if vowels.contains(lc) {
                right -= 1
            }else if vowels.contains(rc) {
                left += 1
            }else {
                left += 1
                right -= 1
            }
        }
        
        return String(chars)
    }
}
