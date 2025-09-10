//
//  KItemsWithMaximumSum.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/5.
//

import Foundation

class KItemsWithMaximumSum {
    
    // 2600. K 件物品的最大和 https://leetcode.cn/problems/k-items-with-the-maximum-sum/
    func kItemsWithMaximumSum(_ numOnes: Int, _ numZeros: Int, _ numNegOnes: Int, _ k: Int) -> Int {
        if numOnes >= k {
            return k
        } else if numOnes + numZeros >= k {
            return numOnes
        } else {
            return numOnes - (k - numOnes - numZeros)
        }
    }
}
