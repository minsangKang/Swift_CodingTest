//
//  10872 팩토리얼.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

func factorial(_ n: Int) -> Int {
    if(n <= 1) {
        return 1
    }
    return n*factorial(n-1)
}
func main1() {
    let N = Int(readLine()!)!
    print(factorial(N))
}
