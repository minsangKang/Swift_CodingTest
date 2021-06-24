//
//  가장 큰 수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/24.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted: [Int] = numbers.sorted(by: { Int("\($0)\($1)")! >= Int("\($1)\($0)")! })
    var result: String = ""
    if(sorted[0] == 0) {
        result = "0"
    } else {
        result = sorted.reduce("") { $0+"\($1)" }
    }
    return result
}

//func solution(_ numbers:[Int]) -> String {
//    var array = [(Int,Int)]()
//    for n in numbers {
//        var temp: String = ""
//        while(temp.count < 4) {
//            temp += String(n)
//        }
//        array.append((Int(temp)!, n))
//    }
//    array.sort(by: { $0.0 >= $1.0 })
//
//    var result: String = ""
//    for index in array {
//        result += String(index.1)
//    }
//
//    return result
//}

//var maxNum: Int = 0
//
//func check(_ a: [Int]) {
//    let num = Int(a.reduce(""){ String($0)+String($1) })!
//    maxNum = max(maxNum, num)
//}
//
//func permuteWirth(_ a: [Int], _ n: Int) {
//    if n == 0 {
//        check(a)
//    } else {
//        var a = a
//        permuteWirth(a, n - 1)
//        for i in 0..<n {
//            a.swapAt(i, n)
//            permuteWirth(a, n - 1)
//            a.swapAt(i, n)
//        }
//    }
//}
//
//func solution(_ numbers:[Int]) -> String {
//    permuteWirth(numbers, numbers.count-1)
//    return String(maxNum)
//}
