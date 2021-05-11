//
//  2438 별 찍기 - 1.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main9() {
    let n = Int(readLine()!)!
    for i in 1...n {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}
