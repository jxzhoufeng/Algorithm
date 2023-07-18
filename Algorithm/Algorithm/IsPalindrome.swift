//
//  IsPalindrome.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/14.
//

import Foundation

class IsPalindrome {
    
    // 234. 回文链表 https://leetcode.cn/problems/palindrome-linked-list/
    func isPalindrome(_ head: ListNode?) -> Bool {
        var arr = [Int?]()
        var head = head
        while head != nil {
            arr.append(head?.val)
            head = head?.next
        }
        var left = 0
        var right = arr.count - 1
        while right >= left {
            let l = arr[left]
            let r = arr[right]
            if l == r {
                left += 1
                right -= 1
            } else {
                return false
            }
        }
        return true
    }
}
