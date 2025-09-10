//
//  CountSquares.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 1277. 统计全为 1 的正方形子矩阵 https://leetcode.cn/problems/count-square-submatrices-with-all-ones/
class CountSquares {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var n = 0
        var dp:[[Int]] = Array(repeating: Array(repeating: -1, count: matrix[0].count), count: matrix.count)
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if i == 0 || j == 0 {
                    dp[i][j] = matrix[i][j]
                } else if matrix[i][j] == 0 {
                    dp[i][j] = 0
                } else {
                    dp[i][j] = min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]) + 1
                }
                n += dp[i][j]
            }
        }
        return n
    }
}

//[[0,1,1,1],
// [1,1,1,1],
// [0,1,1,1]]
//
//[[0, 1, 1, 1],
// [1, 1, 2, 2],
// [0, 1, 2, 3]]


