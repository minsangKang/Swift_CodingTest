//
//  문자열 재정렬.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/30.
//

import Foundation

func main() {
    let datas: [String] = readLine()!.map() { String($0) }
    var characters: [String] = []
    var numbers: [Int] = []
    
    for data in datas {
        if let num: Int = Int(data) {
            numbers.append(num)
        } else {
            characters.append(data)
        }
    }
    characters.sort()
    let num: Int = numbers.reduce(0, +)
    
    var result: String = characters.reduce("", +)
    if(num != 0) {
        result += String(num)
    }
    
    print(result)
}
