//
//  10870 피보나치 수 5.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

func fibonacci(_ n: Int) -> Int {
    if(n <= 1) {
        return n
    }
    return fibonacci(n-1) + fibonacci(n-2)
}
func main2() {
    let N = Int(readLine()!)!
    print(fibonacci(N))
}
