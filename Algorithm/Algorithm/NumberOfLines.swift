//
//  NumberOfLines.swift
//  Algorithm
//
//  Created by 周峰 on 2025/8/26.
//

// 806. 写字符串需要的行数 https://leetcode.cn/problems/number-of-lines-to-write-string/
class NumberOfLines {
//    [3,4,10,4,8,7,3,3,4,9,8,2,9,6,2,8,4,9,9,10,2,4,9,10,8,2] mqblbtpvicqhbrejb
    func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
        
        let t1 = Test1()
        t1.name = "hahaha"
        var t = Test()
        t.people = t1.copy()
        var q = t.copy()
        q.people?.name = "lalala"
        
        print(t, q)
        print("t===\(t.people?.name ?? ""), q===\(q.people?.name ?? "")")
        withUnsafePointer(to: &t) { print("t: \($0)") }
        withUnsafePointer(to: &q) { print("q: \($0)") }
        
        var totalWidth = 0
        var currentWidth = 0
        for c in s {
            let index = (c.asciiValue ?? 0) - 97
            let width = widths[Int(index)]
            let tmp = currentWidth + width
            if tmp > 100 { // 当前行放不下了
                currentWidth = width
                totalWidth = (totalWidth / 100 + 1) * 100 + width
            } else if tmp == 100 {
                currentWidth = 0
                totalWidth += width
            } else {
                totalWidth += width
                currentWidth += width
            }
            
        }
        let line = (totalWidth + 100 - 1) / 100
        let m = totalWidth % 100
        return [line , m == 0 ? 100 : m]
    }
}

struct Test {
    var people: Test1?
    
    func copy() -> Test {
        Test(people: people?.copy())
    }
}

class Test1 {
    var name: String?
    
    init(name: String? = nil) {
        self.name = name
    }
    
    func copy() -> Test1 {
        Test1(name: self.name)
    }
}
