//
//  14681 사분면 고르기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main4() {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!
    if x>0 {
        y>0 ? print(1) : print(4)
    } else {
        y>0 ? print(2) : print(3)
    }
}
