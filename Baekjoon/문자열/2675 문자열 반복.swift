//
//  2675 문자열 반복.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main4() {
    let num = Int(readLine()!)!
    for _ in 1...num {
        let inputs = readLine()!.split(separator: " ").map { String($0) }
        let repeatCount = Int(inputs[0])!
        let printString = inputs[1]
        for i in printString {
            for _ in 1...repeatCount {
                print(i, terminator: "")
            }
        }
        print()
    }
}
