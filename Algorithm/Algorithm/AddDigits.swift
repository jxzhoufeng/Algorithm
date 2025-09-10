//
//  AddDigits.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/14.
//

import Foundation

class AddDigits {
    
    // 258. 各位相加 https://leetcode.cn/problems/add-digits/
    func addDigits(_ num: Int) -> Int {
        var result = num
        while result >= 10 {
            result = foo(result)
        }
        return result
    }
    
    private func foo(_ num: Int) -> Int {
        var result = 0
        var num = num
        while num > 0 {
            let last = num % 10
            result += last
            num = num / 10
        }
        return result
    }
}
