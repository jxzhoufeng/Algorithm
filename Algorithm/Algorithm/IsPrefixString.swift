//
//  IsPrefixString.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/11.
//

import UIKit

// 1961. 检查字符串是否为数组前缀 https://leetcode-cn.com/problems/check-if-string-is-a-prefix-of-array/
class IsPrefixString: NSObject {
    
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {
        var i = 0
        let length = s.count
        for word in words {
            for c in word {
                if "\(c)" != s[i] {
                    return false
                }
                i += 1
            }
            if i == length {
                return true
            }
        }
        return false
    }
}

extension String {
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}
