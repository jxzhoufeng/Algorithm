//
//  GetMaximumGenerated.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/23.
//

import UIKit

class GetMaximumGenerated: NSObject {
    
    // 1646. 获取生成数组中的最大值 https://leetcode-cn.com/problems/get-maximum-in-generated-array/
    func getMaximumGenerated(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        var values = [Int](repeating: 0, count: n + 1)
        values[0] = 0
        values[1] = 1
        var result = 1
        for i in 0...n {
            if (2 * i <= n) {
                values[2 * i] = values[i]
                result = max(values[2 * i], result)
            }
            if (2 * i + 1 <= n) {
                values[2 * i + 1] = values[i] + values[i + 1]
                result = max(values[2 * i + 1], result)
            }
        }
        return result
    }
}
