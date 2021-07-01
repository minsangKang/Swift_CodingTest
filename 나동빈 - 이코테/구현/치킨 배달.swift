//
//  치킨 배달.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/02.
//

import Foundation

func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let head = [first]
    let subcombos = combos(elements: elements, k: k - 1)
    var ret = subcombos.map { head + $0 }
    ret += combos(elements: elements.dropFirst(), k: k)

    return ret
}

func combos<T>(elements: Array<T>, k: Int) -> [[T]] {
    return combos(elements: ArraySlice(elements), k: k)
}

func getSum(_ candidate: [(Int, Int)], _ house: [(Int, Int)]) -> Int {
    var sum: Int = 0
    for h in house {
        var tempMin: Int = Int.max
        for c in candidate {
            let temp: Int = abs(h.0-c.0)+abs(h.1-c.1)
            tempMin = min(tempMin, temp)
        }
        sum += tempMin
    }
    return sum
}

func main() {
    let datas = readLine()!.split(separator: " ").map() { Int(String($0))! }
    let N = datas[0]
    let M = datas[1]
    
    var house: [(Int,Int)] = []
    var chicken: [(Int, Int)] = []
    for r in 0..<N {
        let data = readLine()!.split(separator: " ").map() { Int(String($0))! }
        for c in 0..<N {
            if(data[c] == 1) {
                house.append((r, c))
            }
            else if(data[c] == 2) {
                chicken.append((r, c))
            }
        }
    }
    let candidates: [[(Int,Int)]] = combos(elements: chicken, k: M)
    var result: Int = Int.max
    for candidate in candidates {
        result = min(result, getSum(candidate, house))
    }
    
    print(result)
}
