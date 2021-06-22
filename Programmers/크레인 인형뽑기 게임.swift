//
//  크레인 인형뽑기 게임.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/22.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boomCount: Int = 0
    var map = board
    var stack: [Int] = []
    
    for c in moves {
        let column = c-1
        for row in 0..<map[0].count {
            if(map[row][column] != 0) {
                let num = map[row][column]
                map[row][column] = 0
                
                if(stack.isEmpty) {
                    stack.append(num)
                } else {
                    if(num == stack.last) {
                        stack.removeLast()
                        boomCount += 2
                    } else {
                        stack.append(num)
                    }
                }
                break
            }
        }
    }
    
    return boomCount
}
