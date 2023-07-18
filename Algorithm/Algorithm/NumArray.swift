//
//  NumArray.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation

class NumArray {
    
    private var newNums = [Int]()
    
    init(_ nums: [Int]) {
        if nums.count == 0 { return }
        newNums = [Int](repeating: 0, count: nums.count)
        newNums[0] = nums[0]
        for i in 1..<nums.count {
            newNums[i] = newNums[i - 1] + nums[i - 1]
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        if left == 0 {
            return newNums[right]
        }
        return newNums[right] - newNums[left - 1]
    }
}
