//
//  타겟 넘버.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/25.
//

import Foundation

var answer: Int = 0

func DFS(_ idx: Int, _ numbers: [Int], _ target: Int, _ value: Int) {
    let N = numbers.count
    if(idx == N) {
        if(value == target) {
            answer += 1
        }
        return
    }
    
    DFS(idx+1, numbers, target, value+numbers[idx])
    DFS(idx+1, numbers, target, value-numbers[idx])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    DFS(0, numbers, target, 0)
    return answer
}
