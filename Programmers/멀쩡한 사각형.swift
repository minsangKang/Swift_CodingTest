//
//  멀쩡한 사각형.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/19.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer: Int64 = Int64(w*h)
    let gcd: Int = gcd(w, h) // 반복되는 회수
    let small_w = Int(w/gcd)
    let small_h = Int(h/gcd)
    let small_minus: Int = small_w + small_h - 1
    let minus: Int = small_minus*gcd
    answer -= Int64(minus)

    return answer
}
