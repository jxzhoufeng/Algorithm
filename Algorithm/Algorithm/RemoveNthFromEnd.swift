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
