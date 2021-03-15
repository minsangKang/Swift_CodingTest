//
//  2439 별 찍기 - 2.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main10() {
    let n = Int(readLine()!)!
    for i in 1...n {
        if i != n {
            for _ in 1...(n-i) {
                print(" ", terminator: "")
            }
        }
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}
