//
//  4153 직각삼각형.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

func main9() {
    while true {
        let datas = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        let a = datas[0], b = datas[1], c = datas[2]
        if(a == 0 && b == 0 && c == 0) {
            break
        }
        if(a*a + b*b == c*c) {
            print("right")
        } else {
            print("wrong")
        }
    }
}
