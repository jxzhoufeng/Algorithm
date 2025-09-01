//
//  FindErrorNums.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 645. 错误的集合 https://leetcode.cn/problems/set-mismatch/
class FindErrorNums {
    // [1,2,2,4]
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var nums = nums
        var errNum = 0
        var rawNum = 0
        for num in nums {
            if nums[num - 1] < 0 {
                errNum = num
            } else {
                nums[num - 1] *= -1
            }
        }
        for (i, num) in nums.enumerated()  {
            if num > 0 {
                rawNum = i + 1
                break
            }
        }
        return [errNum, rawNum]
    }
}
