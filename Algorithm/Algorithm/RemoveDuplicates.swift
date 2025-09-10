//
//  RemoveDuplicates.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/11.
//

import UIKit

class RemoveDuplicates: NSObject {
    
    // 26. 删除有序数组中的重复项 https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let count = nums.count
        var l1 = count - 2
        var l2 = count - 1
        while l1 >= 0 {
            let num1 = nums[l1]
            let num2 = nums[l2]
            if num1 == num2 {
                nums.remove(at: l1)
            }
            l1 -= 1
            l2 -= 1
        }
        return nums.count
    }
    
    // 27. 移除元素 https://leetcode-cn.com/problems/remove-element/
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let count = nums.count
        var p = count - 1
        while p >= 0 {
            if nums[p] == val {
                nums.remove(at: p)
            }
            p -= 1
        }
        return nums.count
    }
    
    // 28. 实现 strStr() https://leetcode-cn.com/problems/implement-strstr/
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if haystack == needle {
            return 0
        }
        if haystack.count < needle.count {
            return -1
        }
        for i in 0...haystack.count - needle.count {
            var flag = true
            for j in 0..<needle.count {
                if haystack[j + i] != needle[j] {
                    flag = false
                    break
                }
            }
            if flag {
                return i
            }
        }
        return -1
    }
    
    // 31. 下一个排列 https://leetcode-cn.com/problems/next-permutation/
    func nextPermutation(_ nums: inout [Int]) {
        
        var i = nums.count - 2;
        while (i >= 0 && nums[i] >= nums[i + 1]) {
            i -= 1;
        }
        if (i >= 0) {
            var j = nums.count - 1;
            while (j >= 0 && nums[i] >= nums[j]) {
                j -= 1;
            }
            swapTowElement(i, j, &nums)
        }
        reverse(&nums, i + 1)
    }
    
    // [2,0] 1 [1] 1
    // 88. 合并两个有序数组 https://leetcode.cn/problems/merge-sorted-array/
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1, j = n - 1
        while i >= 0 || j >= 0 {
            if j < 0 || (i >= 0 && nums1[i] > nums2[j]) {
                nums1[i + j + 1] = nums1[i]
                i -= 1
            } else {
                nums1[i + j + 1] = nums2[j]
                j -= 1
            }
        }
    }
    
    func reverse(_ nums: inout [Int], _ start: Int) {
        var left = start, right = nums.count - 1
        while left < right {
            swapTowElement(left, right, &nums)
            left += 1
            right -= 1
        }
    }
    
    func swapTowElement(_ index1: Int, _ index2: Int, _ nums: inout [Int]) {
        let v1 = nums[index1]
        nums[index1] = nums[index2]
        nums[index2] = v1
    }
}
