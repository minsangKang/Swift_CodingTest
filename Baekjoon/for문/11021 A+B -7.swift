//
//  11021 A+B -7.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main7() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let datas = readLine()!.split(separator: " ").map { Int($0)! }
        print("Case #\(i): \(datas[0]+datas[1])")
    }
}
