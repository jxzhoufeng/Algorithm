//
//  SelfDividingNumbers.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 728. 自除数 https://leetcode.cn/problems/self-dividing-numbers/
class SelfDividingNumbers {
//    输入：left = 1, right = 22
//    输出：[1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result = [Int]()
        var n = left
        while n <= right {
            if selfDividingNumber(num: n) {
                result.append(n)
            }
            n += 1
        }
        return result
    }
    
    func selfDividingNumber(num: Int) -> Bool {
        for c in String(num) {
            let cInt = Int("\(c)") ?? 0
            guard cInt != 0 else {
                return false
            }
            if num % cInt != 0 {
                return false
            }
        }
        return true
    }
}
