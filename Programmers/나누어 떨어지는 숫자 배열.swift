//
//  나누어 떨어지는 숫자 배열.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/24.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    for num in arr {
        if(num%divisor == 0) {
            result.append(num)
        }
    }
    if(result.isEmpty) {
        result.append(-1)
    }
    return result.sorted()
}
