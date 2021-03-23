//
//  1085 직사각형에서 탈출.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/23.
//

func main7() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from_x = datas[0], from_y = datas[1], to_x = datas[2], to_y = datas[3]
    var results: [Int] = []
    results.append(from_x)
    results.append(to_x - from_x)
    results.append(from_y)
    results.append(to_y - from_y)
    print(results.min()!)
}
