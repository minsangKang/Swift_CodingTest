//
//  만들 수 없는 금액.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//314P 만들 수 없는 금액
func main() {
    let _: Int = Int(readLine()!)!
    var numbers: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    numbers = numbers.sorted()
    var target: Int = 1
    var result: Int = 0
    
    for number in numbers {
        if(number > target) {
            result = target
        } else {
            target += number
        }
    }
    
    print(result)
}
