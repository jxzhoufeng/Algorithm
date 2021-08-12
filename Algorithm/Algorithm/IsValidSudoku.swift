//
//  IsValidSudoku.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/12.
//

import UIKit

class IsValidSudoku: NSObject {
    
    // 36. 有效的数独 https://leetcode-cn.com/problems/valid-sudoku/
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var rows = [Set<Character>](repeating: Set.init(), count: board.count)
        var columns = [Set<Character>](repeating: Set.init(), count: board.count)
        var boxs = [Set<Character>](repeating: Set.init(), count: board.count)
        
        for (i, v1) in board.enumerated() {
            for (j, v2) in v1.enumerated() {
                if v2 == "." {
                    continue
                }
                var row = rows[j]
                var colum = columns[i]
                let boxIndex = (i / 3) * 3 + j / 3
                var box = boxs[boxIndex]
                if row.contains(v2) {
                    return false
                }
                if colum.contains(v2) {
                    return false
                }
                if box.contains(v2) {
                    return false
                }
                row.insert(v2)
                colum.insert(v2)
                box.insert(v2)
                
                rows[j] = row
                columns[i] = colum
                boxs[boxIndex] = box
            }
        }
        return true
    }
}
