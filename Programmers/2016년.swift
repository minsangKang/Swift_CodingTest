//
//  2016년.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/23.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let month: [Int] = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let result: [String] = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    var sumDays: Int = 0
    if(a > 1) {
        for m in 1..<a {
            sumDays += month[m]
        }
    }
    sumDays += (b-1)
    return result[sumDays%7]
}
