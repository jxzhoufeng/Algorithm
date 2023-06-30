//
//  IsCircularSentence.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/30.
//

import Foundation

class IsCircularSentence {
    
    // 2490. 回环句 https://leetcode.cn/problems/circular-sentence/
    func isCircularSentence(_ sentence: String) -> Bool {
        let arr = sentence.components(separatedBy: " ")
        let firstC = arr.first?.first
        let lastC = arr.last?.last
        if firstC != lastC { return false }
        var currS = arr[0]
        for s in 1..<arr.count {
            if currS.last == arr[s].first {
                currS = arr[s]
                continue
            } else {
                return false
            }
        }
        return true
    }
}
