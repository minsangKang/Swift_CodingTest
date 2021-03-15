//
//  9498 시험 성적.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main2() {
    let score = Int(readLine()!)!
    if score >= 90 {
        print("A")
        return
    }
    if score >= 80 {
        print("B")
        return
    }
    if score >= 70 {
        print("C")
        return
    }
    if score >= 60 {
        print("D")
        return
    } else {
        print("F")
    }
}
