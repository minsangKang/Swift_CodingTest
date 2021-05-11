//
//  3052 나머지.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main4() {
    var counts = Array(repeating: 0, count: 42)
    for _ in 1...10 {
        let input = Int(readLine()!)!
        counts[input%42] += 1
    }
    var result: Int = 0
    for i in 0...41 where counts[i]>0{
        result += 1
    }
    print(result)
}
