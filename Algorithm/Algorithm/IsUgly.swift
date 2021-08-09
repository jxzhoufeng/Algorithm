//
//  IsUgly.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/9.
//

import UIKit

/*
 n 为丑数可以写成 n = 2^a * 3^b * 5^c
 为判断 n 是否满足上述形式，可以对 n 反复除以 2,3,5，直到 n 不再包含质因数 2,3,5。若剩下的数等于 1，则说明 n 不包含其他质因数，是丑数；否则，说明 n 包含其他质因数，不是丑数。
 */
class IsUgly: NSObject {
    
    // 263. 丑数 https://leetcode-cn.com/problems/ugly-number/
    func isUgly(_ n: Int) -> Bool {
        if n < 1 {
            return false
        }
        let nums = [2, 3, 5]
        var finalNum = n
        for i in nums {
            while finalNum % i == 0 {
                finalNum /= i
            }
        }
        return finalNum == 1
    }
    
    // 264. 丑数II https://leetcode-cn.com/problems/ugly-number-ii/
    func nthUglyNumber(_ n: Int) -> Int {
        var dp = [1]
        var p2 = 0, p3 = 0, p5 = 0
        for _ in 1..<n {
            let num = min(min(dp[p2]*2, dp[p3]*3), dp[p5]*5)
            dp.append(num)
            if num == dp[p2] * 2 {
                p2 += 1
            }
            if num == dp[p3] * 3 {
                p3 += 1
            }
            if num == dp[p5] * 5 {
                p5 += 1
            }
        }
        return dp[n-1]
    }
    
    // 313. 超级丑数 https://leetcode-cn.com/problems/super-ugly-number/
    func nthSuperUglyNumber(_ n: Int, _ primes: [Int]) -> Int {
        var dp = [1]
        var points = [Int]()
        for _ in primes {
            points.append(0)
        }
        for _ in 1..<n {
            var num = INT32_MAX
            for j in 0..<primes.count {
                let n = Int32(primes[j] * dp[points[j]])
                num = min(num, n)
            }
            dp.append(Int(num))
            for k in 0..<primes.count {
                if num == primes[k] * dp[points[k]] {
                    points[k] += 1
                }
            }
        }
        return dp[n-1]
    }
}
