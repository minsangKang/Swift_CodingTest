//
//  1316 그룹 단어 체커.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main10() {
    let num = Int(readLine()!)!
    var count: Int = 0
    for _ in 1...num {
        let input = readLine()!.map { String($0) }
        var status: Bool = true
        for i in input {
            let char: String = String(i)
            let first: Int = input.firstIndex(of: char)!
            let last: Int = input.lastIndex(of: char)!
            for j in first...last {
                if(input[j] != char) {
                    status = false
                    break
                }
            }
        }
        if(status) { count += 1}
    }
    print(count)
}
