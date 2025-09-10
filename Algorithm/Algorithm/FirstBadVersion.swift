//
//  FirstBadVersion.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/14.
//

import Foundation

class FirstBadVersion: VersionControl {
    
    // 278. 第一个错误的版本 https://leetcode.cn/problems/first-bad-version/
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1, right = n, mid = left + (right - left) / 2
        while right >= left {
            if isBadVersion(mid) {
                right = mid - 1
            } else {
                left = mid + 1
            }
            mid = left + (right - left) / 2
        }
        return mid
    }
}

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool {
        return true
    }
}
