//
//  3진번 뒤집기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/24.
//

import Foundation

func solution(_ n:Int) -> Int {
    let temp: String = String(String(n, radix: 3).reversed())
    let result: Int = Int(temp, radix: 3)!
    return result
}
