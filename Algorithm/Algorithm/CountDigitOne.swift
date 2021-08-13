//
//  CountDigitOne.swift
//  Algorithm
//
//  Created by zhoufeng on 2021/8/13.
//

import UIKit

class CountDigitOne: NSObject {
    
    //233. 数字 1 的个数 https://leetcode-cn.com/problems/number-of-digit-one/
    func countDigitOne(_ n: Int) -> Int {
        var mulk: Int64 = 1;
        var ans = 0;
        while n >= mulk {
            let p = (Int64(n) / (mulk * 10)) * mulk
            let m = min(max(Int64(n) % (mulk * 10) - mulk + 1, 0), mulk)
            ans += Int((p + m));
            mulk *= 10;
        }
        return ans;
    }
}
