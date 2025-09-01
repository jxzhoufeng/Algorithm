//
//  CanPlaceFlowers.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 605. 种花问题 https://leetcode.cn/problems/can-place-flowers/
class CanPlaceFlowers {
//    [1,0,1,0,1,0,1]
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = 1
        var n = n
        let flowerbed = [0] + flowerbed + [0]
        while count < flowerbed.count - 1 {
            let last = flowerbed[count - 1]
            let next = flowerbed[count + 1]
            let current = flowerbed[count]
            if last == 0 && next == 0 && current != 1 {
                n -= 1
                count += 2
            } else {
                count += 1
            }
            if n == 0 {
                return true
            }
        }
        return n <= 0
    }
}
