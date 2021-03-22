//
//  11653 소인수분해.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/22.
//

import Foundation
func main3() {
    var num = Int(readLine()!)!
    if(num == 1) {
        return
    }
    let to: Int = Int(sqrt(Double(num)))+1
    for i in 2...to {
        while (num%i == 0) {
            num /= i
            print(i)
        }
    }
    if(num>1) { print(num) }
}
