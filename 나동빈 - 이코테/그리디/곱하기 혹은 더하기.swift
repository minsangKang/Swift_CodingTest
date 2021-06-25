//
//  곱하기 혹은 더하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//312P 곱하기 혹은 더하기
func main() {
    let numbers: [Int] = readLine()!.map { Int(String($0))! }
    var result: Int = 0
    
    for number in numbers {
        if(number <= 1 || result <= 1) {
            result += number
        } else {
            result *= number
        }
    }
    print(result)
}
