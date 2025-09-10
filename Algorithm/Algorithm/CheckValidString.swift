//
//  CheckValidString.swift
//  Algorithm
//
//  Created by 周峰 on 2021/9/12.
//

import UIKit

class CheckValidString: NSObject {
    
    // 678. 有效的括号字符串 https://leetcode-cn.com/problems/valid-parenthesis-string/
    func checkValidString(_ s: String) -> Bool {
        var leftStack: [Int] = []
        var starStack: [Int] = []
        for (i, ch) in s.enumerated() {
            switch ch {
            case "(":
                leftStack.append(i)
            case "*":
                starStack.append(i)
            case ")":
                if !leftStack.isEmpty {
                    let _ = leftStack.popLast()
                } else if !starStack.isEmpty {
                    let _ = starStack.popLast()
                } else {
                    return false
                }
            default:
                fatalError()
            }
        }
        
        while let starIndex = starStack.popLast(), let leftIndex = leftStack.popLast() {
            guard starIndex > leftIndex else {
                return false
            }
        }
        
        return leftStack.isEmpty
    }
}
