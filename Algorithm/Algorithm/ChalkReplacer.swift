//
//  ChalkReplacer.swift
//  Algorithm
//
//  Created by 周峰 on 2021/9/10.
//

import UIKit

class ChalkReplacer: NSObject {
    
    // 1894. 找到需要补充粉笔的学生编号 https://leetcode-cn.com/problems/find-the-student-that-will-replace-the-chalk/
    func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
        var sum = 0
        for chal in chalk {
            sum += chal
        }
        
        var k = k % sum
        
        for index in 0..<chalk.count {
            if k - chalk[index] < 0 {
                return index
            }
            
            k -= chalk[index]
        }
        
        return chalk.count - 1
    }
}
