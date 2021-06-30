//
//  문자열 압축.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/30.
//

import Foundation

func solution(_ s:String) -> Int {
    let latters: [String] = s.map() { String($0) }
    let lattersCount: Int = latters.count
    if(lattersCount <= 2) { return lattersCount }
    
    let maxTerm: Int = lattersCount/2
    var minSize: Int = lattersCount
    
    var afterString: String = ""
    for term in 1...maxTerm {
        //term : 묶음크기, termCount: 묶음개수
        let termCount: Int = lattersCount/term
        var before: String = ""
        var index: Int = 0
        var sameCount: Int = 0
        
        for _ in 0..<termCount {//묶음 반복
            let tempString: String = latters[index...index+term-1].reduce("", +)
            if(tempString == before) {
                sameCount += 1
            } else {
                if(sameCount > 1) { afterString += String(sameCount) }
                afterString += before
                sameCount = 1
                before = tempString
            }
            index += term
        }
        if(sameCount > 1) {
            afterString += String(sameCount)
        }
        afterString += before
        if(lattersCount%term != 0) {
            let tempString: String = latters[index...lattersCount-1].reduce("", +)
            afterString += tempString
        }
        //최종 afterString 생성
        if(afterString.count < minSize) {
            minSize = afterString.count
        }
        afterString = ""
    }
    
    return minSize
}
