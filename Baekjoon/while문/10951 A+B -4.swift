//
//  10951 A+B -4.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main2() {
    while let line = readLine() {
        let datas = line.split(separator: " ").map { Int($0)! }
        let A = datas[0], B = datas[1]
        print(A+B)
    }
}
