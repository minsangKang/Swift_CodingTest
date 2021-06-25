//
//  숫자 카드 게임.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//97P 숫자 카드 게임
func main() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N: Int = datas[0]
    
    var maxNum: Int = 0
    for _ in 0..<N {
        let data = readLine()!.split(separator: " ").map { Int(String($0))! }
        maxNum = max(maxNum, data.min()!)
    }
    
    print(maxNum)
}
