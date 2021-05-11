//
//  10952 A+B -5.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main1() {
    while true {
        let datas = readLine()!.split(separator: " ").map { Int($0)! }
        let A = datas[0], B = datas[1]
        if A==0 && B==0 {
            return
        }
        print(A+B)
    }
}
