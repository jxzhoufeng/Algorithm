//
//  CountAndSay.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/12.
//

import UIKit

class CountAndSay: NSObject {
    
    // 38. 外观数列 https://leetcode-cn.com/problems/count-and-say/
    var currentCount = 1
    func countAndSay(_ n: Int) -> String {
        
        var res = "1"
        for _ in 1..<n {
            var count = 1
            var str = ""
            for c in 1...res.count {
                if res[c] == res[c-1] {
                    count += 1
                }else {
                    str.append("\(count)\(res[c-1])")
                    count = 1
                }
            }
            res = str
        }
        
//        let str = numToString("1", n)
        return res
    }
    
    func numToString(_ s: String, _ max: Int) -> String {
        if currentCount == max {
            return s
        }
        var count = 1
        var str = ""
        for c in 1...s.count {
            if s[c] == s[c-1] {
                count += 1
            }else {
                str.append("\(count)\(s[c-1])")
                count = 1
            }
        }
        currentCount += 1
        return numToString(str, max)
    }
}
