//
//  AddStrings.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation

class AddStrings {
    
    // 415. 字符串相加 https://leetcode.cn/problems/add-strings/
    func addStrings(_ num1: String, _ num2: String) -> String {
        var result = ""
        let arr1 = Array(Array(num1).reversed())
        let arr2 = Array(Array(num2).reversed())
        let count = max(num1.count, num2.count)
        var carry = 0
        for i in 0..<count {
            let n1 = (arr1[ice: i] ?? "0").hexDigitValue ?? 0
            let n2 = (arr2[ice: i] ?? "0").hexDigitValue ?? 0
            let r = n1 + n2 + carry
            carry = r / 10
            result += "\(r % 10)"
        }
        if carry > 0 {
            result.append("1")
        }
        return String(result.reversed())
    }
}

extension Array {
    /// 数组的安全访问
    subscript (ice index: Int) -> Element? {
        return (0..<count).contains(index) ? self[index] : nil
    }
}
