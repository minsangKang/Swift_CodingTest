//
//  문자열 뒤집기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//313P 문자열 뒤집기
func main() {
    let numbers: [Int] = readLine()!.map { Int(String($0))! }
    var count: Int = 0
    let backgroundNum: Int = numbers[0]
    
    for i in 1..<numbers.count {
        let target: Int = numbers[i]
        if(target != backgroundNum) {
            if(numbers[i-1] != target) {
                count += 1
            } else {
                continue
            }
        }
    }
    print(count)
}
