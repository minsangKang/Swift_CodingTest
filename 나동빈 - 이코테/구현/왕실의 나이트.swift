//
//  왕실의 나이트.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/30.
//

import Foundation

func main() {
    let datas: [String] = readLine()!.map() { String($0) }
    let xDatas: [String] = ["a", "b", "c", "d", "e", "f", "g", "h"]
    var x: Int = 0
    let y: Int = Int(datas[1])!
    
    for i in 0..<xDatas.count {
        if(datas[0] == xDatas[i]) { x = i+1 }
    }
    
    let moves: [(Int,Int)] = [(2,1), (2,-1), (-2,1), (-2,-1), (1,2), (1,-2), (-1,2), (-1,-2)]
    var count: Int = 0
    
    for move in moves {
        let nextX: Int = x+move.0
        let nextY: Int = y+move.1
        if(nextX < 1 || nextY < 1 || nextX > 8 || nextY > 8) {
            continue
        }
        count += 1
    }
    
    print(count)
}
