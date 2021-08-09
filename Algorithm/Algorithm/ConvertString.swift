//
//  ConvertString.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/9.
//

import UIKit

// 6. Z 字形变换 https://leetcode-cn.com/problems/zigzag-conversion/
class ConvertString: NSObject {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows <= 1 {
            return s
        }
        var arr = [String]()
        for _ in 0..<numRows {
            arr.append("")
        }
        var currentR = 0
        // 方向 0 往下 1 往上
        var direction = 0
        for c in s {
            arr[currentR].append(c)
            if direction == 0 {
                currentR += 1
                if currentR == numRows - 1 {
                    direction = 1
                }
            }else {
                currentR -= 1
                if currentR == 0 {
                    direction = 0
                }
            }
        }
        var result = ""
        for s in arr {
            result.append(s)
        }
        return result
    }
}
