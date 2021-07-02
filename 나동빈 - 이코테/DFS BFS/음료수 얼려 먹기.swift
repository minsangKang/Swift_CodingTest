//
//  음료수 얼려 먹기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/03.
//

import Foundation

var map: [[Int]] = []

func check(_ N: Int, _ M: Int, _ row: Int, _ column: Int) -> Bool {
    if(row < 0 || row > N-1 || column < 0 || column > M-1) {
        return false
    }
    if(map[row][column] == 1) {
        return false
    }
    //현재위치 체크
    map[row][column] = 1
    check(N, M, row-1, column)
    check(N, M, row+1, column)
    check(N, M, row, column+1)
    check(N, M, row, column-1)
    return true
}

func main() {
    let datas = readLine()!.split(separator: " ").map() { String($0) }
    let N: Int = Int(datas[0])!
    let M: Int = Int(datas[1])!
    
    for _ in 0..<N {
        let row = readLine()!.map() { Int(String($0))! }
        map.append(row)
    }
    
    var count: Int = 0
    for i in 0..<N {
        for j in 0..<M {
            if(check(N, M, i, j)) {
                count += 1
            }
        }
    }
    print(count)
}
