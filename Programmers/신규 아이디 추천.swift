//
//  신규 아이디 추천.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/17.
//

import Foundation
extension String {
  var isLowercased: Bool {
     for c in utf8 where (65...90) ~= c { return false }
     return true
  }
  var isUppercased: Bool {
      for c in utf8 where (97...122) ~= c { return false }
      return true
  }
}

func solution(_ new_id:String) -> String {
    //1단계
    var result: String = ""
    for s in new_id {
        let S = String(s)
        let downS = S.lowercased()
        let upS = S.uppercased()
        
        if(S == upS) {
            result += downS
        } else {
            result += S
        }
    }
    print("1 : \(result)")
    //2단계
    var result2: String = ""
    for s in result {
        let S = String(s)
        //소문자
        if(s.isLowercase) { result2 += S }
        //숫자
        if let _ = Int(S) { result2 += S }
        //, 빼기(-), 밑줄(_), 마침표(.)
        if(S == "," || S == "-" || S == "_" || S == ".") { result2 += S }
    }
    print("2 : \(result2)")
    //3단계
    result = ""
    var count: Int = 0
    for s in result2 {
        let S = String(s)
        if(S == ".") {
            count += 1
        } else {
            count = 0
        }
        if(count > 1) {
            continue
        } else {
            result += S
        }
    }
    print("3 : \(result)")
    //4단계
    result2 = ""
    var i: Int = 0
    for s in result {
        let S = String(s)
        if(i == 0 || i == result.count-1) {
            if(S != ".") {
                result2 += S
            }
        } else {
            result2 += S
        }
        i += 1
    }
    print("4 : \(result2)")
    //5단계
    result = ""
    if(result2 == "") {
        result = "a"
    } else {
        result = result2
    }
    print("5 : \(result)")
    //6단계
    if(result.count < 16) {
        result2 = result
    } else {
        i = 1
        result2 = ""
        for s in result {
            if(i > 15) { break }
            result2 += String(s)
            i += 1
        }
        let index = result2.index(before: result2.endIndex)
        if(result2[index] == ".") {
            result2 = String(result2.dropLast())
        }
    }
    print("6 : \(result2)")
    //7단계
    result = result2
    count = result2.count
    if(count < 3) {
        let index = result2.index(before: result2.endIndex)
        let last = result2[index]
        let plusCount = 3-count
        result += String(repeating: last, count: plusCount)
    }
    print("7 : \(result)")
    return result
}
