//
//  IsIsomorphic.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/3.
//

import Foundation

class IsIsomorphic {
    
    // 205. 同构字符串 https://leetcode.cn/problems/isomorphic-strings/
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let charS = Array(s), charT = Array(t)
        var dic1 = [Character: Int](), dic2 = [Character: Int]()
        for i in 0..<charS.count {
            let cs = charS[i], ct = charT[i]
            let si = dic1[cs], ti = dic2[ct]
            if si != ti {
                return false
            }
            dic1.updateValue(i, forKey: cs)
            dic2.updateValue(i, forKey: ct)
        }
        return true
    }
    
    // 217. 存在重复元素 https://leetcode.cn/problems/contains-duplicate/
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for num in nums {
            if let dNum = dict[num] {
                return true
            } else {
                dict.updateValue(1, forKey: num)
            }
        }
        return false
    }
    
    
    // 219. 存在重复元素 II https://leetcode.cn/problems/contains-duplicate-ii/
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let dNum = dict[num] {
                if index - dNum <= k {
                    return true
                }
            }
            dict.updateValue(index, forKey: num)
        }
        return false
    }
    
    
    // 228. 汇总区间 https://leetcode.cn/problems/summary-ranges/
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.isEmpty { return [] }
        var result = [String]()
        var begin = nums[0]
        var pre = begin
        for i in 1..<nums.count {
            let current = nums[i]
            if current == pre + 1 {
                pre = current
            } else {
                var str = ""
                if begin == pre {
                    str = "\(begin)"
                } else {
                    str = "\(begin)->\(pre)"
                }
                pre = current
                begin = current
                result.append(str)
            }
        }
        if pre == begin {
            result.append("\(pre)")
        } else {
            result.append("\(begin)->\(pre)")
        }
        return result
    }
}
