//
//  Generate.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/26.
//

import Foundation

class Generate {
    
    // 118. 杨辉三角 https://leetcode.cn/problems/pascals-triangle/
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 { return [[1]] }
        if numRows == 2 { return [[1], [1, 1]] }
        var lastRow = generate(numRows - 1)
        let last = lastRow.last!
        var arr = [1]
        for i in 1..<last.count {
            let l = last[i - 1]
            let c = last[i]
            arr.append(l + c)
        }
        arr.append(1)
        lastRow.append(arr)
        return lastRow
    }
    
    // 119. 杨辉三角 II https://leetcode.cn/problems/pascals-triangle-ii/
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 { return [1] }
        if rowIndex == 1 { return [1, 1] }
        let lastRow = getRow(rowIndex - 1)
        var arr = [1]
        for i in 1..<lastRow.count {
            let l = lastRow[i - 1]
            let c = lastRow[i]
            arr.append(l + c)
        }
        arr.append(1)
        return arr
    }
}
