//
//  RunningSum.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/28.
//

import UIKit

class RunningSum: NSObject {
    
    // 1480. 一维数组的动态和 https://leetcode-cn.com/problems/running-sum-of-1d-array/
    func runningSum(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for (i, n) in nums.enumerated() {
            if i == 0 {
                res.append(n)
            }else {
                res.append(res[i - 1] + n)
            }
        }
        return res
    }
    
    // 1588. 所有奇数长度子数组的和 https://leetcode-cn.com/problems/sum-of-all-odd-length-subarrays/
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0
        var preSums: [Int] = [arr[0]]

        for i in 1 ..< arr.count {
            preSums.append(preSums[i-1] + arr[i])
        }
        
        var length = 1
        while length <= arr.count {
            for i in 0 ..< arr.count - length + 1 {
                sum += preSums[i + length - 1] - (i > 0 ? preSums[i - 1] : 0)
            }
            length += 2
        }
        return sum
    }
}
