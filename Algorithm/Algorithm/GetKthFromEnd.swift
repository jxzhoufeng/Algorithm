//
//  GetKthFromEnd.swift
//  Algorithm
//
//  Created by 周峰 on 2021/9/2.
//

import UIKit

class GetKthFromEnd: NSObject {
    
    // 剑指 Offer 22. 链表中倒数第k个节点 https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var slow = head
        var fast = head
        for _ in 0..<k {
            fast = fast?.next
        }
        while fast != nil {
            slow = slow?.next
            fast = fast?.next
        }
        return slow
    }
    
    func test(_ nums: [Int]) {
        var dp = [[[Int]]]()
        dp.append([[], [nums[0]]])
        for i in 1..<nums.count {
            var arr = [[Int]]()
            for var j in dp[i - 1] {
                j.append(nums[i])
                arr.append(j)
            }
            dp.append(dp[i - 1] + arr)
        }
    }
}
