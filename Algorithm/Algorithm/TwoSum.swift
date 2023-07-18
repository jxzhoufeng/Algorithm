//
//  TwoSum.swift
//  Algorithm
//
//  Created by 周峰 on 2023/7/1.
//

import Foundation

class TwoSum {
    
    // 1. 两数之和 https://leetcode.cn/problems/two-sum/
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var nums = nums
        var newNums = [Int]()
        for num in nums {
            let newNum = target - num
            newNums.append(newNum)
        }
        print(newNums)
        for (index, newNum) in newNums.enumerated() {
            if nums.contains(newNum) {
                let i = nums.firstIndex(of: newNum) ?? 0
                if i != index {
                    return [index, nums.firstIndex(of: newNum) ?? 0]
                }
            }
        }
        return []
    }
    
    // 445. 两数相加 II https://leetcode.cn/problems/add-two-numbers-ii/
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var stack1 = [Int](), stack2 = [Int]()
        var l1 = l1, l2 = l2
        while l1 != nil {
            stack1.append(l1!.val)
            l1 = l1!.next
        }
        
        while l2 != nil {
            stack2.append(l2!.val)
            l2 = l2!.next
        }
        
        var carry = 0
        var resNode:ListNode? = nil
        
        while !stack1.isEmpty || !stack2.isEmpty || carry != 0 {
            var temp = carry
            if !stack1.isEmpty {
                temp += stack1.popLast()!
            }
            if !stack2.isEmpty {
                temp += stack2.popLast()!
            }
            carry = temp / 10
            temp %= 10
            
            let node = ListNode(temp)
            node.next = resNode
            resNode = node
        }
        return resNode
    }
}
