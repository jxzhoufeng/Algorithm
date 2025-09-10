//
//  CountBits.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation

class CountBits {
    
    // 338. 比特位计数 https://leetcode.cn/problems/counting-bits
    func countBits(_ n: Int) -> [Int] {
        if n == 0 { return [0] }
        var arr = [Int](repeating: 0, count: n + 1)
        for i in 1...n {
            if i % 2 == 0 {
                arr[i] = arr[i / 2]
            } else {
                arr[i] = arr[i - 1] + 1
            }
        }
        return arr
    }
}
