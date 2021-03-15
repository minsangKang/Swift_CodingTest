//
//  1110 더하기 사이클.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main2() {
    let num = Int(readLine()!)!
    var count: Int = 0
    var temp = num
    while true {
        let A = temp/10, B = temp%10
        temp = B*10 + (A+B)%10
        count += 1
        if temp == num {
            print(count)
            return
        }
    }
}
