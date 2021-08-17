//
//  SpiralOrder.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/15.
//

import UIKit

class SpiralOrder: NSObject {
    // 54. 螺旋矩阵 https://leetcode-cn.com/problems/spiral-matrix/
    /**
     先 -> 右
     右 -> 下
     下 -> 左
     左 -> 上
     上 -> 右  循环
     */
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var i = 0
        var j = 0
        let rowCount = matrix[0].count
        let columnCount = matrix.count
        var result = [Int]()
        var viewIndexs = [(Int, Int)]()
        // 方向 0 - 右 1 - 下 2 - 左 3 - 上
        var direction = 0
        while result.count != rowCount * columnCount {
            let current = matrix[i][j]
            switch direction {
            case 0:
                if j + 1 == rowCount || viewIndexs.contains(where: { (v) -> Bool in
                    return v.0 == i && v.1 == j + 1
                }) {
                    direction = 1
                    i += 1
                }else {
                    j += 1
                }
            case 1:
                if i + 1 == columnCount || viewIndexs.contains(where: { (v) -> Bool in
                    return v.0 == i + 1 && v.1 == j
                }) {
                    direction = 2
                    j -= 1
                }else {
                    i += 1
                }
            case 2:
                if j == 0 || viewIndexs.contains(where: { (v) -> Bool in
                    return v.0 == i && v.1 == j - 1
                }) {
                    direction = 3
                    i -= 1
                }else {
                    j -= 1
                }
            default:
                if i - 1 == 0 || viewIndexs.contains(where: { (v) -> Bool in
                    return v.0 == i - 1 && v.1 == j
                }) {
                    direction = 0
                    j += 1
                }else {
                    i -= 1
                }
            }
            viewIndexs.append((i, j))
            result.append(current)
        }
        return result
    }
    
    // 59. 螺旋矩阵 II https://leetcode-cn.com/problems/spiral-matrix-ii/
    func generateMatrix(_ n: Int) -> [[Int]] {
        var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        // 方向 0 - 右 1 - 下 2 - 左 3 - 上
        var direction = 0
        var row = 0
        var column = 0
        for num in 1...n*n {
            result[column][row] = num
            switch direction {
            case 0:
                if row == n - 1 || result[column][row + 1] != 0 {
                    column += 1
                    direction = 1
                }else {
                    row += 1
                }
            case 1:
                if column == n - 1 || result[column + 1][row] != 0 {
                    row -= 1
                    direction = 2
                }else {
                    column += 1
                }
            case 2:
                if row == 0 || result[column][row - 1] != 0 {
                    column -= 1
                    direction = 3
                }else {
                    row -= 1
                }
            default:
                if column == 0 || result[column - 1][row] != 0 {
                    row += 1
                    direction = 0
                }else {
                    column -= 1
                }
            }
            
        }
        return result
    }
}
