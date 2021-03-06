//
//  RomanNumber.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/9.
//

import UIKit

/**
 罗马数字包含以下七种字符： I - 1， V - 5， X - 10， L - 50，C - 100，D - 500 和 M - 1000
 
 通常情况下，罗马数字中小的数字在大的数字的右边。但也存在特例，例如 4 不写做 IIII，而是 IV。数字 1 在数字 5 的左边，所表示的数等于大数 5 减小数 1 得到的数值 4 。同样地，数字 9 表示为 IX。这个特殊的规则只适用于以下六种情况：

 I 可以放在 V (5) 和 X (10) 的左边，来表示 4 和 9。
 X 可以放在 L (50) 和 C (100) 的左边，来表示 40 和 90。
 C 可以放在 D (500) 和 M (1000) 的左边，来表示 400 和 900。
 */
class RomanNumber: NSObject {
    
    // 13. 罗马数字转整数 https://leetcode-cn.com/problems/roman-to-integer/
    func romanToInt(_ s: String) -> Int {
        let dict = ["M" : 1000, "D" : 500, "C" : 100, "L" : 50, "X" : 10, "V" : 5, "I" : 1]
        var result = 0
        for (i, c) in s.enumerated() {
            let value = dict["\(c)"] ?? 0
            let next = s.index(s.startIndex, offsetBy: i+1)
            if i < s.count - 1 && value < dict["\(s[next])"] ?? 0 {
                result -= value
            }else {
                result += value
            }
        }
        
        return result
    }
    
    // 12. 整数转罗马数字 https://leetcode-cn.com/problems/integer-to-roman/
    func intToRoman(_ num: Int) -> String {
        let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var result = ""
        var newNum = num
        for (index, value) in values.enumerated() {
            let symbol = symbols[index]
            while newNum >= value {
                newNum -= value
                result.append(symbol)
            }
            if newNum == 0 {
                break
            }
        }
        return result
    }
}
