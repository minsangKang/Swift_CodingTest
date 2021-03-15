//
//  10871 X보다 작은 수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main11() {
    let datas = readLine()!.split(separator: " ").map { Int($0)! }
    let x = datas[1]
    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
    for i in 0...inputs.count-1 where inputs[i]<x {
        print(inputs[i], terminator: " ")
    }
}
