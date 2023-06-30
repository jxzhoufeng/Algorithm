//
//  ConvertToTitle.swift
//  Algorithm
//
//  Created by 周峰 on 2023/6/29.
//

import Foundation

class ConvertToTitle {
    
    // 168. Excel表列名称 https://leetcode.cn/problems/excel-sheet-column-title/solution/
    func convertToTitle(_ columnNumber: Int) -> String {
        var result = ""
        var columnNumber = columnNumber
        while columnNumber > 0 {
            columnNumber -= 1
            let num = columnNumber % 26
            let t = translate(num)
            result += t
            columnNumber = columnNumber / 26
        }
        return String(result.reversed())
    }
    
    private func translate(_ num: Int) -> String {
        let asciiVal = Character("A").asciiValue! + UInt8(num)
        return String(Character(UnicodeScalar(asciiVal)))
    }
    
    // 171. Excel 表列序号 https://leetcode.cn/problems/excel-sheet-column-number/
    func titleToNumber(_ columnTitle: String) -> Int {
        var num = 0
        for (index, char) in String(columnTitle.reversed()).enumerated() {
            let p = (pow(26, index) as NSDecimalNumber).intValue
            let curr = translate(char)
            num += curr * p
        }
        return num
    }
    
    private func translate(_ c: Character) -> Int {
        let asciiVal = Character("A").asciiValue!
        return Int(c.asciiValue! - asciiVal + 1)
    }
}
