//
//  NumJewelsInStones.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/24.
//

import Foundation

class NumJewelsInStones {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        var dict = [Character: Int]()
        for c in stones {
            let val = dict[c] ?? 0
            dict.updateValue(val + 1, forKey: c)
        }
            
        for c in jewels {
            let val = dict[c] ?? 0
            result += val
        }
        
        return result
    }
}
