//
//  [1차] 뉴스 클러스터링.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/24.
//

import Foundation

func check(_ test1: String, _ test2: String) -> Bool {
    //A : 65 ~ Z : 90
    var check: Bool = true
    let uni1 = UnicodeScalar(test1)!.value
    let uni2 = UnicodeScalar(test2)!.value
    if(uni1<65 || 90<uni1) {
        check = false
    }
    if(uni2<65 || 90<uni2) {
        check = false
    }
    return check
}

func solution(_ str1:String, _ str2:String) -> Int {
    let str1 = str1.uppercased().map { String($0) }
    let str2 = str2.uppercased().map { String($0) }
    var A: [String] = []
    var B: [String] = []
    var resultA: [String] = []
    var resultUnion: [String] = []
    var resultIntersection: [String] = []
    
    for i in 0..<str1.count-1 {
        if(check(str1[i], str1[i+1])) {
            A.append(str1[i]+str1[i+1])
        }
    }
    
    for i in 0..<str2.count-1 {
        if(check(str2[i], str2[i+1])) {
            B.append(str2[i]+str2[i+1])
        }
    }
    
    if(A.count == 0 && B.count == 0) {
        return 65536
    }
    
    for i in 0..<A.count {
        if let index = B.firstIndex(of: A[i]) {
            resultIntersection.append(A[i])
            B.remove(at: index)
        }
        else {
            resultA.append(A[i])
        }
    }
    resultUnion = resultIntersection+resultA+B
    
    let resultDouble = 65536*Double(resultIntersection.count)/Double(resultUnion.count)
    return Int(resultDouble)
}
