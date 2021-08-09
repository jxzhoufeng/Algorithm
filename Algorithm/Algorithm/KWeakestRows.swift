//
//  KWeakestRows.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/9.
//

import UIKit

// 1337. 矩阵中战斗力最弱的 K 行 https://leetcode-cn.com/problems/the-k-weakest-rows-in-a-matrix/
class KWeakestRows: NSObject {
    
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var counts = [(Int, Int)]()
        for (i, m) in mat.enumerated() {
            var count = 0
            for j in m {
                if j == 1 {
                    count += 1
                }else {
                    break
                }
            }
            counts.append((i, count))
        }
        counts.sort { (c1, c2) -> Bool in
            if c1.1 != c2.1 {
                return c1.1 < c2.1
            }else {
                return c1.0 < c2.0
            }
        }
        var result = [Int]()
        for i in 0..<k {
            let c = counts[i]
            result.append(c.0)
        }
        return result
    }
    
}
