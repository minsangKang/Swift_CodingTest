//
//  1001 A-B.swift
//  swift_backjoon
//
//  Created by Kang Minsang on 2021/03/14.
//

func main6() {
    let line = readLine()!.split(separator: " ")
    let result = line.map { Int($0)! }
    print(result[0] - result[1])
}
