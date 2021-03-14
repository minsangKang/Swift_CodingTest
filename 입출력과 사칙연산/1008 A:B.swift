//
//  1008 A:B.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/14.
//

func main8() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Double($0)! }
    print(results[0]/results[1])
}
