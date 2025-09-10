//
//  UniqueMorseRepresentations.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/26.
//

// 804. 唯一摩尔斯密码词 https://leetcode.cn/problems/unique-morse-code-words/
class UniqueMorseRepresentations {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let code = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var dict = [String: Int]()
        for word in words {
            var str = ""
            for c in word {
                let morseIndex = (c.asciiValue ?? 0) - 97
                str.append(code[Int(morseIndex)])
            }
            dict[str, default: 0] += 1
        }
        return dict.keys.count
    }
}
