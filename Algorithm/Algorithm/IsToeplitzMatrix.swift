//
//  IsToeplitzMatrix.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 766. 托普利茨矩阵 https://leetcode.cn/problems/toeplitz-matrix/
class IsToeplitzMatrix {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        for i in 0..<matrix.count {
            for j in 0..<(matrix[i].count) {
                let current = matrix[i][j]
                if i < matrix.count - 1 && j < matrix[i].count - 1  {
                    let nextLine = matrix[i + 1][j + 1]
                    if current != nextLine {
                        return false
                    }
                }
            }
        }
        return true
    }
}
//[97,97],
//[80,97],
//[10,80]
