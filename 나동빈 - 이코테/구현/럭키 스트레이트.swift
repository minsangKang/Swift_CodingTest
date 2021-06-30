//
//  럭키 스트레이트.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/30.
//

import Foundation

//왼쪽 자릿수 합, 오른쪽 자릿수 합 비교
func main() {
    let scores: [Int] = readLine()!.map { Int(String($0))! }
    let mid: Int = scores.count/2
    
    var sumLeft: Int = 0
    var sumRight: Int = 0
    for i in 0..<mid { sumLeft += scores[i] }
    for i in mid..<scores.count { sumRight += scores[i] }
    
    if(sumLeft == sumRight) {
        print("LUCKY")
    } else {
        print("READY")
    }
}
