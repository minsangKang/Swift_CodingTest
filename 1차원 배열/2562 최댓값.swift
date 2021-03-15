//
//  2562 최댓값.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main2() {
    var arr: [Int] = []
    for _ in 1...9 {
        arr.append(Int(readLine()!)!)
    }
    let max = arr.max()!
    for(index, value) in arr.enumerated() {
        if(value == max) {
            print(max)
            print(index+1)
            return
        }
    }
}
