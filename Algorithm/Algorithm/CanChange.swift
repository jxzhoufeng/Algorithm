//
//  CanChange.swift
//  Algorithm
//
//  Created by 周峰 on 2023/8/21.
//

import Foundation

class CanChange {
    
    // 2337. 移动片段得到字符串 https://leetcode.cn/problems/move-pieces-to-obtain-a-string/
    // start = "_L__R__R_", target = "L______RR"
    func canChange(_ start: String, _ target: String) -> Bool {
        var p1 = 0, p2 = 0
        let n = start.count, m = target.count
        while p1 < n && p2 < m {
            let sc = start[String.Index(utf16Offset: p1, in: start)]
            let tc = target[String.Index(utf16Offset: p2, in: target)]
            if sc == tc {
                p1 += 1
                p2 += 1
            } else {
                
            }
        }
        return p1 == n
    }
}
