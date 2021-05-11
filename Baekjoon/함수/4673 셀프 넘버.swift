//
//  4673 셀프 넘버.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func d(_ n: Int) -> Int {
    var N = n
    var result: Int = N
    while (N != 0) {
        result += N%10
        N /= 10
    }
    return result
}
func main1() {
    var results = Array(repeating: false, count: 10001)
    results[0] = true
    for i in 1...10000 {
        let idx = d(i)
        if idx <= 10000 {
            results[d(i)] = true
        }
    }
    for(index, value) in results.enumerated() where value == false {
        print(index)
    }
}
