//
//  볼링공 고르기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//314P 만들 수 없는 금액
func main() {
    let datas: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N: Int = datas[0]
    var bools: [(Int, Int)] = []
    let weights: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    for i in 1...N {
        bools.append((i, weights[i-1]))
    }
    bools.sort(by: { $0.1 < $1.1 })
    
    var count: Int = 0
    for i in 0..<N-1 {
        let aWeight = bools[i].1
        for j in i+1..<N {
            let bWeight = bools[j].1
            if(aWeight != bWeight) {
                count += 1
            }
        }
    }
    
   print(count)
}

func main2() {
    let datas: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    var N: Int = datas[0]
    let M: Int = datas[1]
    var counts: [Int] = Array(repeating: 0, count: 11)
    
    let weights: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    for weight in weights {
        counts[weight] += 1
    }
    
    var result: Int = 0
    for i in 1...M {
        let countA: Int = counts[i]
        let countB: Int = N-countA
        N -= countA
        result += countA*countB
    }
    
    print(result)
}
