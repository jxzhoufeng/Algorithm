//
//  ValidBrackets.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/10.
//

import UIKit

class ValidBrackets: NSObject {
    // 20. 有效的括号 https://leetcode-cn.com/problems/valid-parentheses/
    func isValid(_ s: String) -> Bool {
        let left = ["(", "[", "{"]
        let right = [")", "]", "}"]
        
        var stack = [String]()
        
        for c in s {
            let cString = "\(c)"
            if left.contains(cString) {
                stack.append(cString)
            }else {
                if stack.isEmpty {
                    return false
                }
                let last = stack.remove(at: stack.count - 1)
                let index = left.firstIndex(of: last)
                let currIndex = right.firstIndex(of: cString)
                if index == currIndex {
                    continue
                }else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
    
    
    // 22. 括号生成 https://leetcode-cn.com/problems/generate-parentheses/
    var result = [String]()
    
    func generateParenthesis(_ n: Int) -> [String] {
        
        dfs(n, n, "")
        return result
    }
    
    func dfs(_ left: Int, _ right: Int, _ str: String) {
        if left == 0 && right == 0 {
            result.append(str)
            return
        }
        
        if left > right {
            return
        }
        
        if left > 0 {
            dfs(left - 1, right, str + "(")
        }
        
        if right > 0 {
            dfs(left, right - 1, str + ")")
        }
    }
}
