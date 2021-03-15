//
//  11022 A+B -8.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main8() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let datas = readLine()!.split(separator: " ").map { Int($0)! }
        let A = datas[0]
        let B = datas[1]
        print("Case #\(i): \(A) + \(B) = \(A+B)")
    }
}
