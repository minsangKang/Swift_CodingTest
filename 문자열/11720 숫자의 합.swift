//
//  11720 숫자의 합.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main2() {
    _ = readLine()
    let input = readLine()!
    var sum: Int = 0
    for i in input {
        sum += Int(String(i))!
    }
    print(sum)
}
