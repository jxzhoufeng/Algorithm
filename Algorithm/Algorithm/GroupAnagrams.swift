//
//  GroupAnagrams.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/15.
//

import UIKit

class GroupAnagrams: NSObject {
    // 49. 字母异位词分组 https://leetcode-cn.com/problems/group-anagrams/
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var strDict = [String: [String]]()
        for str in strs {
            let sortedS = String(str.sorted())
            strDict[sortedS, default: []].append(str)
        }
        let values = strDict.values
        return Array(values)
    }
}
