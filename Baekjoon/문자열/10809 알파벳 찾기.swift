//
//  10809 알파벳 찾기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main3() {
    let input = readLine()!
    var counts = Array(repeating: -1, count: 26)
    for(index, value) in input.enumerated() {
        let idx = Int(UnicodeScalar(String(value))!.value)-97
        if(counts[idx] == -1) {
            counts[idx] = index
        }
    }
    for i in counts {
        print(i, terminator: " ")
    }
}
