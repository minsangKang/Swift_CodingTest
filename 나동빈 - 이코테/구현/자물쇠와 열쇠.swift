//
//  자물쇠와 열쇠.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/01.
//

import Foundation

func lotation(_ M: Int, _ point: (Int,Int)) -> (Int,Int) {
    let row: Int = point.1
    let column: Int = (M-1)-point.0
    return (row, column)
}

func check(_ N: Int, _ map: [[Int]]) -> Bool {
    for i in N..<2*N {
        for j in N..<2*N {
            if(map[j][j] != 1) {
                return false
            }
        }
    }
    return true
}

func solution(_ key:[[Int]], _ lock:[[Int]]) -> Bool {
    let M: Int = key[0].count
    let N: Int = lock[0].count
    var key = key
    var map: [[Int]] = Array(repeating: Array(repeating: 0, count: 3*N), count: 3*N)
    for i in 0..<N {
        for j in 0..<N { map[i+N][j+N] = lock[i][j] }
    }
    
    var lotationCount: Int = 0
    while(lotationCount < 4) {
        let row: Int = (N-M+1) //행 좌표
        let column: Int = (N-M+1) //열 좌표
        for i in 0...M+N-2 { //열 위치이동
            for j in 0...M+N-2 { //행 위치이동
                let startRow: Int = row+i
                let startColumn: Int = column+j
                for r in 0..<M {
                    for c in 0..<M {
                        map[startRow+r][startColumn+c] += key[r][c]
                    }
                }
                if(check(N, map)) {
                    return true
                    break
                }
                for r in 0..<M {
                    for c in 0..<M {
                        map[startRow+r][startColumn+c] -= key[r][c]
                    }
                }
            }
        }
        //lotation
        var tempKey: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: M)
        for i in 0..<M {
            for j in 0..<M {
                let tempPoint: (Int,Int) = lotation(M, (i, j))
                tempKey[tempPoint.0][tempPoint.1] = key[i][j]
            }
        }
        key = tempKey
        lotationCount += 1
    }
    return false
}
