//
//  IsOneBitCharacter.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 717. 1 比特与 2 比特字符 https://leetcode.cn/problems/1-bit-and-2-bit-characters/
class IsOneBitCharacter {
    // 1,1,1,0
    // 0  10 11
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        let count = bits.count
        var n = 0
        while n < count - 1 {
            if bits[n] == 0 {
                n += 1
            } else {
                n += 2
            }
        }
        return n == count - 1
    }
}
