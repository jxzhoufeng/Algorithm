//
//  ShortestCompletingWord.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/22.
//

// 748. 最短补全词 https://leetcode.cn/problems/shortest-completing-word/
class ShortestCompletingWord {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        var licenseMap = [Character: Int]()
        for ch in licensePlate.lowercased() {
            if ch >= "a" && ch <= "z" {
                licenseMap[ch] = (licenseMap[ch] ?? 0) + 1
            }
        }
        var minLen = Int.max
        var result = ""
        for word in words {
            if word.count >= minLen {
                continue
            }
            if checkWord(word, licenseMap: licenseMap) {
                result = word
                minLen = word.count
            }
        }
        return result
    }

    func checkWord(_ word: String, licenseMap: [Character: Int]) -> Bool {
        var wordMap = [Character: Int]()
        for ch in word {
            wordMap[ch] = (wordMap[ch] ?? 0) + 1
        }
        for (ch, count) in licenseMap {
            guard let cnt = wordMap[ch] else {
                return false
            }
            if cnt < count {
                return false
            }
        }
        return true
    }
}
