//
//  상하좌우.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/29.
//

import Foundation

func main() {
    let N: Int = Int(readLine()!)!
    let datas: [String] = readLine()!.split(separator: " ").map { String($0) }
    
    var x: Int = 1
    var y: Int = 1
    let acts: [String] = ["L", "R", "U", "D"]
    let move: [(Int,Int)] = [(0,-1), (0,1), (-1,0), (1,0)]
    
    for act in datas {
        for i in 0..<acts.count {
            if(act == acts[i]) {
                let nextX: Int = x+move[i].0
                let nextY: Int = y+move[i].1
                if(nextX < 1 || nextY < 1 || nextX > N || nextY > N) {
                    continue
                }
                x = nextX
                y = nextY
            }
        }
    }
    
    print(x, y)
}
