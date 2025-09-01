//
//  JudgeCircle.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/21.
//

// 657. 机器人能否返回原点 https://leetcode.cn/problems/robot-return-to-origin/
class JudgeCircle {
    func judgeCircle(_ moves: String) -> Bool {
        //R（右），L（左），U（上）和 D（下）
        var ud = 0
        var lr = 0
        for c in moves {
            switch c {
            case "R":
                lr += 1
            case "L":
                lr -= 1
            case "U":
                ud += 1
            case "D":
                ud -= 1
            default:
                break
            }
        }
        return ud == 0 && lr == 0
    }
}
