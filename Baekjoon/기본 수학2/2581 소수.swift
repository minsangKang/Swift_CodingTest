//
//  2581 소수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/22.
//

func main2() {
    var bools: [Bool] = Array(repeating: true, count: 10001)
    bools[0] = false
    bools[1] = false
    for i in 2...10000 {
        if(bools[i] == true) {
            var j: Int = 2
            while (i*j<=10000) {
                bools[i*j] = false
                j += 1
            }
        }
    }
    
    let from = Int(readLine()!)!
    let to = Int(readLine()!)!
    var results: [Int] = []
    var sum: Int = 0
    for i in from...to {
        if(bools[i]) {
            sum += i
            results.append(i)
        }
    }
    if(sum == 0) {
        print(-1)
    } else {
        print(sum)
        print(results.min()!)
    }
}
