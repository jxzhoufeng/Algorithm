//
//  NextGreatestLetter.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 744. 寻找比目标字母大的最小字母 https://leetcode.cn/problems/find-smallest-letter-greater-than-target/
class NextGreatestLetter {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var min: UInt8 = UInt8.max
        var ans: Character?
        for c in letters {
            if (c.asciiValue ?? 0) > (target.asciiValue ?? 0) {
                let diff = (c.asciiValue ?? 0) - (target.asciiValue ?? 0)
                if diff < min {
                    min = diff
                    ans = c
                }
            }
        }
        if ans == nil {
            ans = letters[0]
        }
        return ans!
    }
}
