//
//  SearchArray.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/12.
//

import UIKit

class SearchArray: NSObject {
    
    // 33. 搜索旋转排序数组 https://leetcode-cn.com/problems/search-in-rotated-sorted-array/
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[mid] >= nums[left] {// 左边有序
                if target >= nums[left] && target < nums[mid] {// target 在左边
                    right = mid - 1
                } else {// target 不在左边 left 指向 mid 后一个
                    left = mid + 1
                }
            } else {// 右边有序
                if target > nums[mid] && target <= nums[right] {// target 在右边
                    left = mid + 1
                } else {// target 不在右边 right 指向 mid 前一个
                    right = mid - 1
                }
            }
        }
        return -1
    }
    
    
    // 34. 在排序数组中查找元素的第一个和最后一个位置 https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                var begin = mid
                var end = mid
                for i in (0..<mid).reversed() {
                    if nums[i] != target {
                        begin = i + 1
                        break
                    }else {
                        begin = i
                    }
                }
                for j in (mid + 1)..<nums.count {
                    if nums[j] != target {
                        end = j - 1
                        break
                    }else {
                        end = j
                    }
                }
                return [begin, end]
            }
            if target < nums[mid] {
                right = mid - 1
            }else {
                left = mid + 1
            }
        }
        return [-1, -1]
    }
    
    
    // 35. 搜索插入位置 https://leetcode-cn.com/problems/search-insert-position/
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) >> 1
            
            if target <= nums[mid] {
                right = mid - 1
            }else {
                left = mid + 1
            }
        }
        return left
    }
}
