//
//  문자열 압축.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/22.
//

import Foundation

func solution(_ s:String) -> Int {
    var afterString: String = ""
    for term in 1...s.count/2 {
        var count: Int = 0
        var textCount: Int = 1
        var before: String = ""
        while(count < s.count/term) {
            var start: String.Index
            if(count == 0) { start = s.startIndex }
            else { start = s.index(s.startIndex, offsetBy: term*count) }
            let end: String.Index = s.index(s.startIndex, offsetBy: term*(count+1)-1)
            let subString = s[start...end]
            
            if(before == String(subString)) {
                textCount += 1
            } else {
                if(before != "") {
                    afterString += "\(textCount)\(before)"
                }
                textCount = 1
                before = String(subString)
            }
            count += 1
        }
        print(afterString)
        afterString = ""
    }
    return 0
}
