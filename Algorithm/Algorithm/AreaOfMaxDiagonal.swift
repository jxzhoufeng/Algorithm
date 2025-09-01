//
//  AreaOfMaxDiagonal.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/26.
//
import math_h

// 3000. 对角线最长的矩形的面积 https://leetcode.cn/problems/maximum-area-of-longest-diagonal-rectangle/
class AreaOfMaxDiagonal {
    func areaOfMaxDiagonal(_ dimensions: [[Int]]) -> Int {
        var maxDiagonal = 0
        var maxArea = 0
        for dimension in dimensions {
            let long = dimension[0]
            let width = dimension[1]
            let tmp = long * long + width * width
            let area = long * width
            if tmp > maxDiagonal {
                maxDiagonal = tmp
                maxArea = area
            } else if maxDiagonal == tmp  {
                maxArea = max(maxArea, long * width)
            }
        }
        return maxArea
    }
}
