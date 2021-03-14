//
//  10998 AXB.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/14.
//

func main7() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Int($0)! }
    print(results[0]*results[1])
}
