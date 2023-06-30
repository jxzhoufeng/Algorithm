//
//  MajorityElement.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/29.
//

import Foundation

class MajorityElement {
    
    // 169. 多数元素 https://leetcode.cn/problems/majority-element/
    func majorityElement(_ nums: [Int]) -> Int {
        var result = nums[0]
        var count = 0
        for num in nums {
            if count == 0 {
                result = num
            }
            if num == result {
                count += 1
            } else {
                count -= 1
            }
        }
        return result
    }
}
