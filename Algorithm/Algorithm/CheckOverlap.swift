//
//  CheckOverlap.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/25.
//

import Foundation
import UIKit

class CheckOverlap {
    // 1401. 圆和矩形是否有重叠 https://leetcode.cn/problems/circle-and-rectangle-overlapping/
    func checkOverlap(_ radius: Int, _ xCenter: Int, _ yCenter: Int, _ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Bool {
        let x = foo(x1: x1, x2: x2, center: xCenter)
        let y = foo(x1: y1, x2: y2, center: yCenter)
        return x * x + y * y <= radius * radius
    }
    
    func foo(x1: Int, x2: Int, center: Int) -> Int {
        if x1 < center && x2 > center {
            return 0
        }
        
        return x1 > center ? x1 - center : x2 - center
    }
}


