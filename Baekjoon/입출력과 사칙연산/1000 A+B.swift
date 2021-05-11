//
//  1000 A+B.swift
//  swift_backjoon
//
//  Created by Kang Minsang on 2021/03/14.
//

func main5() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Int($0)! }
    print(results[0]+results[1])
}
