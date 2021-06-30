//
//  게임 개발.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/30.
//

import Foundation

func main() {
    let datas: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N: Int = datas[0] //세로
    let M: Int = datas[1] //가로
    
    let datas2: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    var y: Int = datas2[0]
    var x: Int = datas2[1]
    var direction: Int = datas2[2]
    
    var map: [[Int]] = []
    var passed: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
    for i in 0..<N {
        let rowMap: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
        map.append(rowMap)
    }
    
    let moves: [(Int,Int)] = [(1,0), (0,1), (-1,0), (0,-1)]
    var lotationCount: Int = 0
    
    var count: Int = 1
    passed[y][x] = 1
    while(true) {
        direction = direction-1 < 0 ? 3 : direction-1
        lotationCount += 1
        
        let nextY: Int = y+moves[direction].0
        let nextX: Int = x+moves[direction].1
        
        if(map[nextY][nextX] == 0 && passed[nextY][nextX] == 0) {
            y = nextY
            x = nextX
            passed[y][x] = 1
            count += 1
            lotationCount = 0
            continue
        }
        
        if(lotationCount == 4) {
            let backY: Int = y+moves[(direction+2)%4].0
            let backX: Int = x+moves[(direction+2)%4].1
            if(map[backY][backX] == 0) {
                y = backY
                x = backX
                lotationCount = 0
            } else {
                break
            }
        }
    }
    
    print(count)
}
