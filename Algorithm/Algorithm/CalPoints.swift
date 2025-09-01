//
//  CalPoints.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 682. 棒球比赛 https://leetcode.cn/problems/baseball-game/
class CalPoints {
//    整数 x - 表示本回合新获得分数 x
//    "+" - 表示本回合新获得的得分是前两次得分的总和。题目数据保证记录此操作时前面总是存在两个有效的分数。
//    "D" - 表示本回合新获得的得分是前一次得分的两倍。题目数据保证记录此操作时前面总是存在一个有效的分数。
//    "C" - 表示前一次得分无效，将其从记录中移除。题目数据保证记录此操作时前面总是存在一个有效的分数。
    func calPoints(_ operations: [String]) -> Int {
        var ans = 0
        var points = [Int]()
        for s in operations {
            let n = points.count
            if s == "+" {
                points.append(points[n - 1] + points[n - 2])
            } else if s == "D" {
                points.append(points[n - 1] * 2)
            } else if s == "C" {
                points.removeLast()
            } else {
                let point = Int(s) ?? 0
                points.append(point)
            }
        }
        for p in points {
            ans += p
        }
        return ans
    }
}
