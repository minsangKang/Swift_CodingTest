//
//  모험가 길드.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//311P 모험가 길드
func main() {
    let _: Int = Int(readLine()!)!
    var players: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    players = players.sorted()
    
    var count: Int = 0
    var groupCount: Int = 0

    for player in players {
        count += 1
        if(count >= player) {
            groupCount += 1
            count = 0
        }
    }
    
    print(groupCount)
}
