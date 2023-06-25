//
//  AddBinary.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/21.
//

import Foundation

class AddBinary {

    // 67. 二进制求和 给你两个二进制字符串 a 和 b ，以二进制字符串的形式返回它们的和。
    // https://leetcode.cn/problems/add-binary/
    func addBinary(_ a: String, _ b: String) -> String {
        var result = ""
        let a = String(a.reversed())
        let b = String(b.reversed())
        var carry = 0
        for i in (0..<max(a.count, b.count)) {
            var numA = 0
            var numB = 0
            if a.count > i {
                let ca = a[i]
                numA = Int(ca) ?? 0
            }
            if b.count > i {
                numB = Int(b[i]) ?? 0
            }
            let val = numA + numB + carry
            let res = val % 2
            result = "\(res)" + result
            carry = val / 2
        }
        if carry > 0 {
            result = "1" + result
        }
        return result
    }
}
