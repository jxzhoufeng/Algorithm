//
//  MostCommonWord.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/27.
//

// 819. 最常见的单词 https://leetcode.cn/problems/most-common-word/
class MostCommonWord {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let special = ["!","?","'",";",".",","]
        var dict = [String: Int]()
        var start = 0
        for (index, p) in paragraph.enumerated() {
            if p == " " || special.contains("\(p)") {
                let str = paragraph[start..<index]
                start = index + 1
                if str != "" {
                    dict[str.lowercased(), default: 0] += 1
                }
            }
        }
        if start < paragraph.count {
            let last = paragraph[start..<paragraph.count]
            dict[last.lowercased(), default: 0] += 1
        }
        let arr = dict.sorted { d1, d2 in
            d1.value > d2.value
        }
        for e in arr {
            if !banned.contains(e.key) {
                return e.key
            }
        }
        return ""
    }
}


