//
//  RemoveNthFromEnd.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/10.
//

import UIKit

class RemoveNthFromEnd: NSObject {
    // 19. 删除链表的倒数第 N 个结点 https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode.init(0, head)
        var first = head
        var second: ListNode? = dummy
        for _ in 0..<n {
            first = first?.next
        }
        while first != nil {
            second = second?.next
            first = first?.next
        }
        second?.next = second?.next?.next
        return dummy.next
    }
    
    // 24. 两两交换链表中的节点 https://leetcode-cn.com/problems/swap-nodes-in-pairs/
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let dummy = ListNode(0, head)
        var tmp: ListNode? = dummy
        
        while tmp?.next != nil && tmp?.next?.next != nil {
            let n1 = tmp?.next
            let n2 = n1?.next
            tmp?.next = n2
            n1?.next = n2?.next
            n2?.next = n1
            tmp = n1
        }
        
        return dummy.next
    }
    
    // 203. 移除链表元素 https://leetcode.cn/problems/remove-linked-list-elements/
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode(val - 1)
        dummy.next = head
        var temp: ListNode? = dummy
        while temp?.next != nil {
            if temp?.next?.val == val {
                temp?.next = temp?.next?.next;
            }else{
                temp = temp?.next;
            }
        }
        return dummy.next
    }
}

public class ListNode {
    public var val: Int
    
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}
