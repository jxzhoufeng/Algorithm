//
//  CheckRecord.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/17.
//

import UIKit

class CheckRecord: NSObject {
    
    // 551. 学生出勤记录 I https://leetcode-cn.com/problems/student-attendance-record-i/
    func checkRecord(_ s: String) -> Bool {
        var ACount = 0
        var CLCount = 0
        for c in s {
            if c == "A" {
                ACount += 1
                CLCount = 0
            }else if c == "L" {
                CLCount += 1
            }else {
                CLCount = 0
            }
            if ACount >= 2 {
                return false
            }
            if CLCount >= 3 {
                return false
            }
        }
        return true
    }
}
