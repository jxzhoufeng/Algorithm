//
//  MyAtoi.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/9.
//

import UIKit

// 8. 字符串转换整数 (atoi) https://leetcode-cn.com/problems/string-to-integer-atoi/
class MyAtoi: NSObject {
    
    func myAtoi(_ s: String) -> Int {
        var num = ""
        var isPositive = true
        var checkP = false
        for c in s {
            if num.count == 0 {
                if c == " " {
                    if checkP {
                        return 0
                    }
                    continue
                }else if c == "-" || c == "+" {
                    isPositive = c == "+"
                    if checkP {
                        return 0
                    }
                    checkP = true
                }else if c.isNumber {
                    num.append(c)
                }else {
                    break
                }
            }else {
                if c.isNumber {
                    num.append(c)
                }else {
                    break
                }
            }
        }
        if num.isEmpty {
            return 0
        }
        let max = 2147483647
        let min = -2147483648
        var result = max
        if let r = Int(num) {
            result = r
        }else {
            if isPositive {
                result = max
            }else {
                result = max + 1
            }
        }
        
        if !isPositive {
            result = -result
        }
        
        if result > max {
            return max
        }
        if result < min {
            return min
        }
        return result
    }
}
