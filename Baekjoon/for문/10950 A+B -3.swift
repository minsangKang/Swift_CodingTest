//
//  10950 A+B -3.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main2() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let results = readLine()!.split(separator: " ").map { Int($0)! }
        let A = results[0]
        let B = results[1]
        print("\(A+B)")
    }
}
