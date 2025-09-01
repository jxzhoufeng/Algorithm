//
//  CountPrimeSetBits.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 762. 二进制表示中质数个计算置位 https://leetcode.cn/problems/prime-number-of-set-bits-in-binary-representation/
class CountPrimeSetBits {
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        let set: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
        var res = 0
        for i in left ... right {
            var count = 0
            var num = i
            while num > 0 {
                count += 1
                num -= num & -num
            }
            
            if set.contains(count) {
                res += 1
            }
        }
        
        return res
    }
}
