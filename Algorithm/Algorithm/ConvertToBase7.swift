//
//  ConvertToBase7.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 504. 七进制数 https://leetcode.cn/problems/base-7/
class ConvertToBase7 {
    func convertToBase7(_ num: Int) -> String {
        var n = num
        var result = ""
        
        if n == 0 { return "0" }
        
        let isNegative = n < 0
        if isNegative {
            n = -n
        }
        
        while n > 0 {
            let remainder = n % 7
            result = String(remainder) + result
            n /= 7
        }
        
        return isNegative ? "-" + result : result
    }
}
