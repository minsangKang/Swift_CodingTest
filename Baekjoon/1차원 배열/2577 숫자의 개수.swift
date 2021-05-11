//
//  2577 숫자의 개수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main3() {
    let A = Int(readLine()!)!
    let B = Int(readLine()!)!
    let C = Int(readLine()!)!
    let result = String(A*B*C)
    var counts = Array(repeating: 0, count: 10)
    for i in result {
        counts[Int(String(i))!] += 1
    }
    for i in 0...9 {
        print(counts[i])
    }
}
