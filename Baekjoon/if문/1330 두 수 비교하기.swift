//
//  1330 두 수 비교하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main1() {
    let line = readLine()!.split(separator: " ")
    let results = line.map { Int($0)! }
    let A = results[0]
    let B = results[1]
    
    if A>B {
        print(">")
    } else if A<B {
        print("<")
    } else {
        print("==")
    }
}
