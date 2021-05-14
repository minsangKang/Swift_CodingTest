//
//  내적.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/15.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result: Int = 0

    for index in 0..<a.count {
        result += a[index] * b[index]
    }

    return result
}
