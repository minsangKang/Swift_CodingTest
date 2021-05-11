//
//  10250 ACM 호텔.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/19.
//

import Foundation
func main5() {
    let num = Int(readLine()!)!
    for _ in 1...num {
        let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
        let height = datas[0], count = datas[2]
        var W = count/height
        if count%height > 0 {
            W += 1
        }
        let H = count - (height*(W-1))
        print("\(H)\(String(format: "%02d", W))")
    }
}
