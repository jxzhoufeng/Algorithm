//
//  MinFallingPathSum.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/13.
//

import Foundation

class MinFallingPathSum {
    
    // 931. 下降路径最小和 https://leetcode.cn/problems/minimum-falling-path-sum/
    func minFallingPathSum(_ matrix: [[Int]]) -> Int {
        let length = matrix.count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: length), count: length)
        dp[0] = matrix[0]

        for row in 1..<length {
            for col in 0..<length {
                var mn = dp[row - 1][col]
                if col > 0 {
                    mn = min(mn, dp[row - 1][col - 1])
                }
                if col < length - 1 {
                    mn = min(mn, dp[row - 1][col + 1])
                }
                dp[row][col] = mn + matrix[row][col]
            }
        }
        
        return dp.last?.min() ?? 0
    }
}
