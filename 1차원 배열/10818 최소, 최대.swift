//
//  10818 최소, 최대.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main1() {
    _ = readLine()
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    print(arr.min()!, arr.max()!)
}
