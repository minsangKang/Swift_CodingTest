//
//  가운데 글자 가져오기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/23.
//

import Foundation

func solution(_ s:String) -> String {
    let str = s.map { String($0) }
    var result: String = ""
    let idx = str.count/2
    if(str.count%2 != 0) {
        result = str[idx]
    } else {
        result = str[idx-1]+str[idx]
    }
    return result
}
