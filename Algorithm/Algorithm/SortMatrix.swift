//
//  SortMatrix.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/28.
//

// 3446. 按对角线进行矩阵排序 https://leetcode.cn/problems/sort-matrix-by-diagonals/
class SortMatrix {
//    [1,7,3,4]
//    [9,8,2,8]
//    [4,5,6,0]
//    [3,5,6,7]
//
//    1     8      6      7
//    [0, 0] [1, 1] [2, 2] [3, 3]
//    8     7      6      1
    func sortMatrix(_ grid: [[Int]]) -> [[Int]] {
        let count = grid.count
        var result = Array(repeating: Array(repeating: 0, count: count), count: count)
        var leftBottoms = [[Int]]()
        var leftBottomIndexs = [[(Int, Int)]]()
        var rightTops = [[Int]]()
        var rightTopIndexs = [[(Int, Int)]]()
        for i in 0..<count {
            let line = grid[i]
            let first = line[0]
            var currentRow = i
            var currentLine = 0
            var arr = [first]
            var indexArr = [(currentRow, currentLine)]
            while currentRow < count - 1 {
                currentRow += 1
                currentLine += 1
                let next = grid[currentRow][currentLine]
                arr.append(next)
                indexArr.append((currentRow, currentLine))
            }
            leftBottoms.append(arr)
            leftBottomIndexs.append(indexArr)
        }
        
        for i in 1..<count {
            let first = grid[0][i]
            var currentRow = i
            var currentLine = 0
            var arr = [first]
            var indexArr = [(currentLine, currentRow)]
            while currentRow < count - 1 {
                currentRow += 1
                currentLine += 1
                let next = grid[currentLine][currentRow]
                arr.append(next)
                indexArr.append((currentLine, currentRow))
            }
            rightTops.append(arr)
            rightTopIndexs.append(indexArr)
        }
        
        for (index, leftBottom) in leftBottoms.enumerated() {
            let a = leftBottom.sorted(by: { v1, v2 in
                v1 > v2
            })
            let b = leftBottomIndexs[index]
            for (index, e) in a.enumerated() {
                let i = b[index].0
                let j = b[index].1
                result[i][j] = e
            }
        }
        
        for (index, rightTop) in rightTops.enumerated() {
            let a = rightTop.sorted(by: { v1, v2 in
                v1 < v2
            })
            let b = rightTopIndexs[index]
            for (index, e) in a.enumerated() {
                let i = b[index].0
                let j = b[index].1
                result[i][j] = e
            }
        }
        print(result)
        return result
    }
}
