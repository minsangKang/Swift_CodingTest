//
//  카펫.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/24.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total: Int = brown+yellow
    let sumRowColumn: Int = (total-yellow+4)/2

    var result: [Int] = []
    for y in 3...sumRowColumn-3 {
        let x = sumRowColumn-y
        if(y >= x && x >= 3 && x*y == total) {
            result.append(y)
            result.append(x)
            break
        }
    }
    return result
}
