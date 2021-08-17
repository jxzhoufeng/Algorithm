//
//  LengthOfLastWord.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/16.
//

import UIKit

class LengthOfLastWord: NSObject {
    
    // 58. 最后一个单词的长度 https://leetcode-cn.com/problems/length-of-last-word/
    func lengthOfLastWord(_ s: String) -> Int {
        var result = 0
        var begin = false
        for (_, c) in s.enumerated().reversed() {
            if c == " " {
                if begin {
                    break
                }
            }else {
                if !begin {
                    begin = true
                }
                result += 1
            }
        }
        return result
    }
}
