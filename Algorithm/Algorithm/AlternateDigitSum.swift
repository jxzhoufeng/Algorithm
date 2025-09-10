//
//  AlternateDigitSum.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/12.
//

import Foundation

class AlternateDigitSum {
    //
    func alternateDigitSum(_ n: Int) -> Int {
        let str = "\(n)"
        var isPositive = true
        var result = 0
        for c in str {
            let num = c.wholeNumberValue ?? 0
            if isPositive {
                result += num
            } else {
                result -= num
            }
            isPositive = !isPositive
        }
        return result
    }
}
