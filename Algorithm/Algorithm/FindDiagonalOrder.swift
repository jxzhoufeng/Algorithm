//
//  FindDiagonalOrder.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/25.
//

// 498. 对角线遍历 https://leetcode.cn/problems/diagonal-traverse/
import UIKit

class FindDiagonalOrder {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        let m = mat.count
        let n = mat[0].count
        var res = Array(repeating: 0, count: m * n)
        var pos = 0
        for i in 0 ... n + m - 1 {
            if i % 2 == 1 {
                var x = i < n ? 0 : i - n + 1
                var y = i < n ? i : n - 1
                while x < m, y >= 0 {
                    res[pos] = mat[x][y]
                    pos = pos + 1
                    x = x + 1
                    y = y - 1
                }
            } else {
                var x = i < m ? i : m - 1
                var y = i < m ? 0 : i - m + 1
                while x >= 0, y < n {
                    res[pos] = mat[x][y]
                    pos+=1
                    x -= 1
                    y+=1
                }
            }
        }
        return res
    }
}

// public extension Array {
//    /// 数组的安全访问
//    public subscript (ice index: Int) -> Element? {
//        return (0..<count).contains(index) ? self[index] : nil
//    }
// }

// [1, 2]
// [3, 4]

// [[2,5],
// [8,4],
// [0,-1]
// ]
