//
//  MoveZeroes.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/14.
//

import Foundation

class MoveZeroes {
    
    // 283. 移动零 https://leetcode.cn/problems/move-zeroes/
    
    //011100010
    func moveZeroes(_ nums: inout [Int]) {
        var count = nums.count - 1
        while count >= 0 {
            let num = nums[count]
            if num == 0 {
                nums.remove(at: count)
                nums.append(0)
            }
            count -= 1
        }
        print(nums)
    }
}
