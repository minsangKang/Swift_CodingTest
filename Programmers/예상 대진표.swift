//
//  예상 대진표.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/30.
//

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var a = a
    var b = b
    var round: Int = 0
    while(a != b) {
        round += 1
        a = (a+1)/2
        b = (b+1)/2
    }
    
    return round
}
