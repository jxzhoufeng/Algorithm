//
//  RotateString.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/26.
//

// 796. 旋转字符串 https://leetcode.cn/problems/rotate-string/
class RotateString {
    // abcde cdeab abcde bcdea abcde abced
    // 12345 34512 12345 23451 12345 12354
//    func rotateString(_ s: String, _ goal: String) -> Bool {
//        guard s.count == goal.count else { return false }
//        for i in 1..<goal.count {
//            let s1 = goal.substring(toIndex: i)
//            let s2 = goal.substring(fromIndex: i)
//            if s.contains(s1) && s.contains(s2) {
//                return true
//            }
//        }
//        return false
//    }
    
    func rotateString(_ s: String, _ goal: String) -> Bool {
        guard s.count == goal.count else { return false }
        return (s + s).contains(goal)
    }
}
