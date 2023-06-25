//
//  IsSameTree.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/25.
//

import Foundation

class IsSameTree {
    
    // 100. 相同的树 https://leetcode.cn/problems/same-tree/
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if p == nil || q == nil {
            return false
        } else if p?.val != q?.val {
            return false
        }
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
    
    
    // 104. 二叉树的最大深度 https://leetcode.cn/problems/maximum-depth-of-binary-tree/
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var stack = [TreeNode]()
        stack.append(root)
        var deep = 0
        while !stack.isEmpty {
            var size = stack.count
            while size > 0 {
                let top = stack[0]
                stack.remove(at: 0)
                if top.left != nil {
                    stack.append(top.left!)
                }
                if top.right != nil {
                    stack.append(top.right!)
                }
                size -= 1
            }
            deep += 1
        }
        return deep
    }
    
    // 108. 将有序数组转换为二叉搜索树
    // https://leetcode.cn/problems/convert-sorted-array-to-binary-search-tree/
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return helper(nums, left: 0, right: nums.count - 1)
    }
    
    private func helper(_ nums: [Int], left: Int, right: Int) -> TreeNode?  {
        if left > right {
            return nil
        }
        
        let mid = (left + right) / 2
        let node = TreeNode(nums[mid])
        node.left = helper(nums, left: left, right: mid - 1)
        node.right = helper(nums, left: mid + 1, right: right)
        return node
    }
}


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

