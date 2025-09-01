//
//  IslandPerimeter.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/20.
//

// 463. 岛屿的周长 https://leetcode.cn/problems/island-perimeter/
class IslandPerimeter {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var islandCount = 0
        var repeatCount = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    islandCount += 1
                    if i > 0 {
                        if grid[i - 1][j] == 1 {
                            repeatCount += 1
                        }
                    }
                    if j > 0 {
                        if grid[i][j - 1] == 1 {
                            repeatCount += 1
                        }
                    }
                }
            }
        }
        return islandCount * 4 - 2 * repeatCount
    }
}

//[[0,1,0,0],  0
// [1,1,1,0],  2 1
// [0,1,0,0],
// [1,1,0,0]]
