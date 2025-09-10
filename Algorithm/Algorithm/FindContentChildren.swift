//
//  FindContentChildren.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/19.
//

// 455. 分发饼干 https://leetcode.cn/problems/assign-cookies
class FindContentChildren {
//    g = [1,2], s = [1,2,3]
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var res = 0
        let g = g.sorted()
        let s = s.sorted()
        
        var gIndex = 0
        var sIndex = 0
        
        while gIndex < g.count && sIndex < s.count {
            if sIndex >= s.count {
                sIndex = s.count - 1
            }
            if g[gIndex] <= s[sIndex] {
                res += 1
                gIndex += 1
                sIndex += 1
            } else if g[gIndex] > s[sIndex] {
                sIndex += 1
            }
        }
        
        return res
    }
}
