//
//  1427 소트인사이드.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/29.
//

func main5() {
    let numbers = readLine()!.map { Int(String($0))! }.sorted(by: >)
    for n in numbers {
        print(n, terminator: "")
    }
}
