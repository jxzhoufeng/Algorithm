//
//  DeleteDuplicates.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/25.
//

import Foundation

class DeleteDuplicates {
    // 83. 删除排序链表中的重复元素 https://leetcode.cn/problems/remove-duplicates-from-sorted-list/
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var next = head?.next
        var current = head
        while next != nil {
            if current?.val == next?.val {
                current?.next = next?.next
                next?.next = nil
            } else {
                current = current?.next
            }
            next = current?.next
        }
        return head
    }
}
