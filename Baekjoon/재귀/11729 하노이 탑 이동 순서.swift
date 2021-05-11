//
//  11729 하노이 탑 이동 순서.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

func hanoi(_ n: Int) -> Int {
    if(n == 1) {
        return 1
    }
    return 2*hanoi(n-1)+1
}
func printHanoi(_ n: Int, _ from: Int, _ to: Int, _ temp: Int) {
    if(n == 1) {
        print("\(from) \(to)")
    } else {
        printHanoi(n-1, from, temp, to)
        print("\(from) \(to)")
        printHanoi(n-1, temp, to, from)
    }
}
func main4() {
    let N = Int(readLine()!)!
    print(hanoi(N))
    printHanoi(N, 1, 3, 2)
}
