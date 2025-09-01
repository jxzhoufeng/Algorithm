//
//  MinCostClimbingStairs.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 746. 使用最小花费爬楼梯 https://leetcode.cn/problems/min-cost-climbing-stairs/
class MinCostClimbingStairs {
    // [1,100,1,1,1,100,1,1,100,1]
//    [10,15,20]
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
//        var dp = Array(repeating: 0, count: cost.count + 1)
//        dp[0] = 0
//        dp[1] = 0
        var last = 0
        var current = 0
        for i in 2...cost.count {
            let tmp = current
            current = min(current + cost[i - 1], last + cost[i - 2])
            // dp[i] = min(dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2])
            last = tmp
        }
//        print(dp)
        return current//dp.last ?? 0
    }
}
