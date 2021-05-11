//
//  2753 윤년.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main3() {
    let year = Int(readLine()!)!
    if((year%4 == 0 && year%100 != 0) || (year%400 == 0)) {
        print(1)
    } else {
        print(0)
    }
}
