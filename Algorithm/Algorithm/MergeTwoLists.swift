//
//  MergeTwoLists.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/17.
//

import UIKit

class MergeTwoLists: NSObject {
    
    /**
     ListNode first = l1;
             ListNode second = l2;
             //虚拟头结点
             ListNode newHead = new ListNode(-1);
             ListNode prev = newHead;
             while (first != null && second != null) {
                 if (first.val < second.val) {
                     prev.next = first;
                     first = first.next;
                 }else {
                     prev.next = second;
                     second = second.next;
                 }
                 prev = prev.next;
             }
             
             prev.next = first == null ? second : first;
             return newHead.next;
     */
    // 21. 合并两个有序链表 https://leetcode-cn.com/problems/merge-two-sorted-lists/submissions/
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var first = l1
        var second = l2
        
        let dummy: ListNode? = ListNode.init(-1)
        var pr = dummy
        while first != nil && second != nil {
            if first?.val ?? 0 < second?.val ?? 0 {
                pr?.next = first
                first = first?.next
            }else {
                pr?.next = second
                second = second?.next
            }
            pr = pr?.next
        }
        
        pr?.next = first == nil ? second : first
        return dummy?.next
    }
        
}
