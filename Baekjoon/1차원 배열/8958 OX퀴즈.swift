//
//  8958 OX퀴즈.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main6() {
    let num = Int(readLine()!)!
    for _ in 1...num {
        let datas = readLine()!
        var sum: Int = 0
        var current: Int = 0
        for i in datas {
            if(i == "O") {
                current += 1
                sum += current
            } else {
               current = 0
            }
        }
        print(sum)
    }
}
