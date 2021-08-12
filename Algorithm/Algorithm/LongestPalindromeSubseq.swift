//
//  LongestPalindromeSubseq.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/12.
//

import UIKit

class LongestPalindromeSubseq: NSObject {
    
    func longestPalindromeSubseq(_ s: String) -> Int {
        let count = s.count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: s.count), count: s.count)
        for (i, c1) in s.enumerated().reversed() {
            dp[i][i] = 1
            for j in (i + 1)..<count {
                let c2 = s[j]
                if "\(c1)" == c2 {
                    dp[i][j] = dp[i+1][j-1] + 2
                }else {
                    dp[i][j] = max(dp[i+1][j], dp[i][j-1])
                }
            }
        }
        return dp[0][count-1]
    }
}
