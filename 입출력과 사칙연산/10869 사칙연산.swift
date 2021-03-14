//
//  10869 사칙연산.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/14.
//

func main9() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Int($0)! }
    print(results[0]+results[1])
    print(results[0]-results[1])
    print(results[0]*results[1])
    print(results[0]/results[1])
    print(results[0]%results[1])
}
