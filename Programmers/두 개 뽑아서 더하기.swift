//
//  두 개 뽑아서 더하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/23.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let numbers = numbers.sorted()
    var result: [Int] = []
    
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            let temp = numbers[i]+numbers[j]
            if(!result.contains(temp)) {
                result.append(temp)
            }
        }
    }
    return result.sorted()
}
