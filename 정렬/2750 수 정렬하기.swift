//
//  2750 수 정렬하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/27.
//

func main1() {
    var array: [Int] = []
    let n = Int(readLine()!)!
    for _ in 1...n {
        array.append(Int(readLine()!)!)
    }
    array = array.sorted()
    for i in array {
        print(i)
    }
}
