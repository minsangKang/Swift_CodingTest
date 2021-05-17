//
//  체육복.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/17.
//

import Foundation
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var students: [Bool] = Array(repeating: true, count: n)
    for s in lost {
        students[s-1] = false
    }
    for have in reserve {
        if(lost.contains(have)) {
            students[have-1] = true
            continue
        }
        if(have == 1 && lost.contains(2)) {
            students[1] = true
            continue
        }
        else if(have == n && lost.contains(n-1)) {
            students[n-2] = true
            continue
        }
        else {
            if(lost.contains(have-1) && students[have-2] == false) {
                students[have-2] = true
                continue
            }
            if(lost.contains(have+1) && students[have] == false) {
                students[have] = true
                continue
            }
        }
    }
    var result: Int = 0
    for s in students where s == true {
        result += 1
    }
    return result
}
