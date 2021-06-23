//
//  [1차] 비밀지도.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/23.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<arr1.count {
        let binary: String = String(arr1[i] | arr2[i], radix: 2)
        let binaryString: String = String(repeating: "0", count: n-binary.count) + binary
        let resultBinary: [Int] = binaryString.map { Int(String($0))! }
        
        answer.append(resultBinary.reduce("", { $0 + ($1 == 0 ? " " : "#" )}))
    }
    
    return answer
}

//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    var map = Array(repeating: Array(repeating: 0, count: n), count: n)
//    var answer: [String] = []
//
//    for i in 0..<map.count {
//        var binary: String = String(arr1[i], radix: 2)
//        var dumyCount: Int = n-binary.count
//        var binaryString: String = ""
//        binaryString += String(repeating: "0", count: dumyCount)
//        binaryString += binary
//        var resultBinary: [Int] = binaryString.map { Int(String($0))! }
//
//        map[i] = resultBinary
//
//        binary = String(arr2[i], radix: 2)
//        dumyCount = n-binary.count
//        binaryString = ""
//        binaryString += String(repeating: "0", count: dumyCount)
//        binaryString += binary
//        resultBinary = binaryString.map { Int(String($0))! }
//
//        for j in 0..<map.count {
//            map[i][j] += resultBinary[j]
//        }
//    }
//
//    for m in map {
//        var result: String = ""
//        for int in m {
//            if(int == 0) {
//                result += " "
//            } else {
//                result += "#"
//            }
//        }
//        answer.append(result)
//    }
//
//    return answer
//}
