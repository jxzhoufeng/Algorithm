//
//  MinimumArea.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 3195. 包含所有 1 的最小矩形面积 I https://leetcode.cn/problems/find-the-minimum-area-to-cover-all-ones-i/
class MinimumArea {
//    func minimumArea(_ grid: [[Int]]) -> Int {
//        // 子数组的元素是每行[第一个1，最后一个1]的index
//        var arr = Array(repeating: [-1, -1], count: grid.count)
//        for i in 0..<grid.count {
//            var line = arr[i]
//            for j in 0..<grid[i].count {
//                if grid[i][j] == 1 {
//                    if line.first == -1 {
//                        line[0] = j
//                    } else {
//                        line[1] = j
//                    }
//                }
//            }
//            arr[i] = line
//        }
//        var top = -1
//        var left = Int.max
//        var right = -1
//        var bottom = -1
//        // [[0,0],[1,0]]
//        for i in 0..<arr.count {
//            let a = arr[i]
//            if a[0] != -1 { //说明该行有1
//                if top == -1 {
//                    top = i
//                }
//                if a[1] != -1 { //说明该行至少有2个1
//                    right = max(right, a[1])
//                } else {
//                    right = max(right, a[0])
//                }
//                left = min(left, a[0])
//                bottom = i
//            }
//        }
////        print("top==\(top),left==\(left),right==\(right),bottom==\(bottom)")
//        return (bottom - top + 1) * (right - left + 1)
//    }
    
    func minimumArea(_ grid: [[Int]]) -> Int {
        var left = Int.max
        var top = Int.max
        var right = 0
        var bottom = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                let v = grid[i][j]
                if v == 1 {
                    left = min(left, j)
                    top = min(top, i)
                    right = max(right, j)
                    bottom = max(bottom, i)
                }
            }
        }
        return (bottom - top + 1) * (right - left + 1)
    }
}
