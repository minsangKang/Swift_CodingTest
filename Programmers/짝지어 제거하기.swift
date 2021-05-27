//
//  짝지어 제거하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/27.
//

import Foundation

//func solution(_ s:String) -> Int{
//    var s: String = s
//    var result: Int = -1
//
//    while(result == -1) {
//        if(s == "") {
//            result = 1
//            break
//        } else {
//            for i in 0..<s.count-1 {
//                var lIdx: String.Index
//                var rIdx: String.Index
//                if(i == 0) {
//                    lIdx = s.startIndex
//                    rIdx = s.index(s.startIndex, offsetBy: 1)
//                } else {
//                    lIdx = s.index(s.startIndex, offsetBy: i)
//                    rIdx = s.index(s.startIndex, offsetBy: i+1)
//                }
//
//                if(s[lIdx] == s[rIdx]) {
//                    s.remove(at: lIdx)
//                    s.remove(at: lIdx)
//                    break
//                } else {
//                    if(i == s.count-2) {
//                        result = 0
//                        break
//                    }
//                }
//            }
//
//        }
//    }
//
//    return result
//}



func solution(_ s:String) -> Int{
    var answer: Int = 0
    var temp: [String] = []
    for S in s {
        if(temp.count == 0) {
            temp.append(String(S))
        }
        else if(temp[temp.count-1] != String(S)) { //문자가 같지 않는 경우 : 스택에 추가
            temp.append(String(S))
        }
        else if(temp[temp.count-1] == String(S)) { //문자가 같은 겅우 : 스택 상단 제거
            temp.removeLast()
        }
    }
    //결과적으로 연속되지 않은 값들만 스택에 남게 된다
    if(temp.count == 0) {
        answer = 1
    }
   return answer
}
