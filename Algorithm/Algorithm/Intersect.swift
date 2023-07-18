//
//  Intersect.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/17.
//

import Foundation
 
class Intersect {
    
    // 350. 两个数组的交集 II https://leetcode.cn/problems/intersection-of-two-arrays-ii/
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var arr = [Int]()
        var arr1 = nums1.count > nums2.count ? nums2 : nums1
        var arr2 = nums1.count > nums2.count ? nums1 : nums2
        for num in arr1 {
            if let index = arr2.firstIndex(of: num) {
                arr.append(num)
                arr2.remove(at: index)
            }
        }
        return arr
    }
}
