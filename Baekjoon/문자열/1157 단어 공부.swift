//
//  1157 단어 공부.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main5() {
    let input = readLine()!
    var counts = Array(repeating: 0, count: 26)
    for i in input.utf16 {
        let idx = i>90 ? i-97 : i-65
        counts[Int(idx)] += 1
    }
    let max = counts.max()!
    let idx1 = counts.firstIndex(of: max)!
    let idx2 = counts.lastIndex(of: max)!
    if(max != 0 && idx1 == idx2) {
        print(Character(UnicodeScalar(idx1+65)!))
    } else {
        print("?")
    }
}
