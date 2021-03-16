//
//  1065 한수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func one(_ i: Int) -> Bool {
    if i < 100 {
        return true
    }
    var num = i
    let term1 = num/10%10 - num%10
    num /= 10
    while num>9 {
        let term2 = num/10%10 - num%10
        if term2 == term1 {
            num /= 10
        } else {
            return false
        }
    }
    return true
}
func main2() {
    let input = Int(readLine()!)!
    var count: Int = 0
    for i in 1...input {
        if one(i) {
            count += 1
        }
    }
    print(count)
}
