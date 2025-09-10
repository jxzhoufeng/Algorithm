//
//  EscapeGhosts.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/22.
//

import UIKit

class EscapeGhosts: NSObject {
    
    // 789. 逃脱阻碍者 https://leetcode-cn.com/problems/escape-the-ghosts/
    func escapeGhosts(_ ghosts: [[Int]], _ target: [Int]) -> Bool {
        let escapeLength = abs(target[0]) + abs(target[1])
        for g in ghosts {
            let distanceX = abs(g[0] - target[0])
            let distanceY = abs(g[1] - target[1])
            if distanceX + distanceY <= escapeLength {
                return false
            }
        }
        return true
    }
}
