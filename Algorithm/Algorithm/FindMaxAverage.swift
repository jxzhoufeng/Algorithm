//
//  FindMaxAverage.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 643. 子数组最大平均数 I https://leetcode.cn/problems/maximum-average-subarray-i/
class FindMaxAverage {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        guard nums.count != k else {
            return getSum(nums) / Double(nums.count)
        }
        var lastSum = getSum(Array(nums[0..<(k)]))
        var ans = lastSum / Double(k)
        for i in 1...nums.count - k {
            lastSum = lastSum - Double(nums[i - 1]) + Double(nums[i + k - 1])
            ans = max(ans, lastSum / Double(k))
            print(ans)
        }
        return ans
    }
    
    func getSum(_ nums: [Int]) -> Double {
        var sum = 0
        for num in nums {
            sum += num
        }
        return Double(sum)
    }
}
