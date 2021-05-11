//
//  1436 영화감독 숌.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/26.
//

func check(_ num: Int) -> Bool {
    var count: Int = 0
    var n: Int = num
    while(n != 0) {
        if(n%10 == 6) {
            count += 1
            if(count >= 3) {
                return true
            }
        } else {
            count = 0
        }
        n /= 10
    }
    return false
}
func getNumber(_ target: Int) -> Int {
    var count: Int = 0
    var number = 666
    while(count != target) {
        if(check(number)) {
            count += 1
        }
        number += 1
    }
    return number-1
}
func main5() {
    let N = Int(readLine()!)!
    print(getNumber(N))
}
