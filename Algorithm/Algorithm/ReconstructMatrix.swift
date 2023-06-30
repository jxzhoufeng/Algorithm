//
//  ReconstructMatrix.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/29.
//

import Foundation

class ReconstructMatrix {
    // 1253. 重构 2 行二进制矩阵 https://leetcode.cn/problems/reconstruct-a-2-row-binary-matrix/
    func reconstructMatrix(_ upper: Int, _ lower: Int, _ colsum: [Int]) -> [[Int]] {
        var row1 = Array.init(repeating: 0, count: colsum.count)
        var row2 = Array.init(repeating: 0, count: colsum.count)
        var upper = upper, lower = lower
        for (index, num) in colsum.enumerated() {
            if num == 2 {
                row1[index] = 1
                row2[index] = 1
                upper -= 1
                lower -= 1
            } else if num == 1 {
                if upper > lower {
                    row1[index] = 1
                    upper -= 1
                } else {
                    row2[index] = 1
                    lower -= 1
                }
            }
            if upper < 0 || lower < 0 {
                return []
            }
        }
        return (upper == 0 && lower == 0) ? [row1, row2] : []
    }
}
