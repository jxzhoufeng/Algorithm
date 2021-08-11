//
//  ThreeSumClosest.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/10.
//

import UIKit

class ThreeSumClosest: NSObject {
    
    // 1. 两数之和 https://leetcode-cn.com/problems/two-sum/
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict = [Int: Int]()
        
        for (i, n) in nums.enumerated() {
            let diff = target - n
            if let index = dict[n] {
                return [i, index]
            }else {
                dict[diff] = i
            }
        }
        return []
    }
    
    // 15. 三数之和 https://leetcode-cn.com/problems/3sum/
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count == 0 || nums.count < 3 {
            return []
        }
        var newNums = nums
        newNums.sort()
        var result = [[Int]]()
        
        for (i, n) in newNums.enumerated() {
            if i > 0 && newNums[i] == newNums[i - 1] {
                continue
            }
            var s = i + 1, e = newNums.count - 1
            while s < e {
                let sn = newNums[s]
                let en = newNums[e]
                let sum = n + sn + en
                if sum == 0 {
                    let arr = [n, sn, en]
                    result.append(arr)
                    while(s < e && newNums[e] == newNums[e - 1]) {
                        e -= 1;
                    }
                    while(s < e  && newNums[s] == newNums[s + 1]) {
                        s += 1;
                    }
                    s += 1
                    e -= 1
                }else if sum > 0 {
                    e -= 1
                }else {
                    s += 1
                }
            }
        }
        return result
    }
    
    // 16. 最接近的三数之和 https://leetcode-cn.com/problems/3sum-closest/
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var newNums = nums
        newNums.sort()
        var result = newNums[0] + newNums[1] + newNums[2]
        for (i, n) in newNums.enumerated() {
            var s = i + 1, e = newNums.count - 1
            while s < e {
                let currentRes = n + newNums[s] + newNums[e]
                if closeToTarget(currentRes, result, target) {
                    result = currentRes
                }
                if currentRes == target {
                    return currentRes
                }else if currentRes < target {
                    s += 1
                }else {
                    e -= 1
                }
            }
        }
        return result
    }
    
    // num1 是否比 num2 更接近 target
    func closeToTarget(_ num1: Int, _ num2: Int, _ target: Int) -> Bool {
        return abs(num1 - target) < abs(num2 - target)
    }
}
