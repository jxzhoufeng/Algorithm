//
//  FindDisappearedNumbers.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/19.
//

import Foundation

// 448. 找到所有数组中消失的数字 https://leetcode.cn/problems/find-all-numbers-disappeared-in-an-array
class FindDisappearedNumbers {
    // [-4,-3,-2,-7,8,2,-3,-1]
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums
        for num in nums {
            let index = abs(num)
            if nums[index - 1] > 0 {
                nums[index - 1] = -nums[index - 1]
            }
        }
        print(nums)
        var ans = [Int]()
        for (i, num) in nums.enumerated() {
            if num > 0 {
                ans.append(i + 1)
            }
        }
        return ans
    }
}
