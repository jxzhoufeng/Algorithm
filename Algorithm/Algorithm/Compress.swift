//
//  Compress.swift
//  Algorithm
//
//  Created by 周峰 on 2021/8/21.
//

import UIKit

class Compress: NSObject {
    
    // 443. 压缩字符串 https://leetcode-cn.com/problems/string-compression/
    func compress(_ chars: inout [Character]) -> Int {
        var ch: Character, count = 1, slow = 0,fast = 1
        let n = chars.count
        var str: String = ""
        while slow != n {
            ch = chars[slow]
            if fast < n && ch == chars[fast]{
                count += 1
                if fast + 1 == n  {
                    str += String(ch) + String(count)
                    break
                }
            }else {
                if count != 1{
                    str += String(ch) + String(count)
                }else{
                    str += String(ch)
                }
                slow = fast
                count = 1
            }
            fast += 1
        }
        chars = Array(str)
        return chars.count
    }
}
