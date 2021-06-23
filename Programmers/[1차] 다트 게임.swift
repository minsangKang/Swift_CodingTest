//
//  [1차] 다트 게임.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/23.
//

import Foundation

func solution(_ dartResult:String) -> Int {
    let dartResult: [String] = dartResult.map { String($0) }
    var scores: [Int] = []
    var result: Int = 0
    var isTen: Bool = false
    
    for i in dartResult.indices {
        let S = dartResult[i]
        if let score = (Int)(S) {
            if(score == 1 && dartResult[i+1] == "0") {
                isTen = true
                continue
            } else if(score == 0 && isTen) {
                scores.append(10)
                isTen = false
            } else {
                scores.append(score)
            }
        } else {
            if(S == "S") { continue }
            else if(S == "D") {
                let temp = scores.removeLast()
                scores.append(temp*temp)
            }
            else if(S == "T") {
                let temp = scores.removeLast()
                scores.append(temp*temp*temp)
            }
            else if(S == "*") {
                if(scores.count == 1) {
                    let temp = scores.removeLast()
                    scores.append(temp*2)
                } else {
                    let temp2 = scores.removeLast()
                    let temp1 = scores.removeLast()
                    scores.append(temp1*2)
                    scores.append(temp2*2)
                }
            }
            else if(S == "#") {
                let temp = scores.removeLast()
                scores.append(-temp)
            }
        }
    }
    
    for score in scores {
        result += score
    }
    return result
}
