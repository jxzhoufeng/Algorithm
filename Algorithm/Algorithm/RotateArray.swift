//
//  RotateArray.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/13.
//

import UIKit

class RotateArray: NSObject {
    
    // 48. 旋转图像 https://leetcode-cn.com/problems/rotate-image/
    func rotate(_ matrix: inout [[Int]]) {
        let count = matrix.count
        for i in 0..<count / 2 {
            for j in 0..<(count + 1) / 2 {
                let temp = matrix[i][j]
                matrix[i][j] = matrix[count - j - 1][i];
                matrix[count - j - 1][i] = matrix[count - i - 1][count - j - 1];
                matrix[count - i - 1][count - j - 1] = matrix[j][count - i - 1];
                matrix[j][count - i - 1] = temp;
            }
        }
        /**
         [0][0] = [0][2]
         [0][1] = [1][2]
         [0][2] = [2][2]
         
         [1][0] = [0][1]
         [1][1] = [1][1]
         [1][2] = [2][1]
         
         [2][0] = [0][0]
         [2][1] = [1][0]
         [2][2] = [2][0]
         
         [1,2,3]   [7,4,1]
         [4,5,6]   [8,5,2]
         [7,8,9]   [9,6,3]
         
         [5,  1,  9,  11],
         [2,  4,  8,  10],
         [13, 3,  6,  7],
         [15, 14, 12, 16]
             🔽
         [15,13,2,5],
         [14,3,4,1],
         [12,6,8,9],
         [16,7,10,11]
         
         00 = 03
         01 = 13
         02 = 23
         03 = 33
         
         10 = 02
         11 = 12
         12 = 22
         13 = 32
         
         20 = 01
         21 = 11
         22 = 21
         23 = 31
         
         30 = 00
         31 = 10
         32 = 20
         33 = 30
         */
        
    }
}
