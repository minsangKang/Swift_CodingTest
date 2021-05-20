//
//  순위.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/21.
//

import Foundation

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var map: [[String]] = Array(repeating: Array(repeating: "?", count: n), count: n)
    
    for i in 0..<n {
        map[i][i] = "self"
    }
    
    for result in results {
        let win = result[0]-1
        let lose = result[1]-1
        map[win][lose] = "win"
        map[lose][win] = "lose"
    }
    
    for k in 0..<n {
        for i in 0..<n {
            for j in 0..<n {
                if(map[i][k] == "win" && map[k][j] == "win") {
                    map[i][j] = "win"
                }
                if(map[i][k] == "lose" && map[k][j] == "lose") {
                    map[i][j] = "lose"
                }
            }
        }
    }
    
    var result: Int = 0
    for m in map {
        if (!m.contains("?")) {
            result += 1
        }
    }
    return result
}

//func solution(_ n:Int, _ results:[[Int]]) -> Int {
//    let INF = Int.max
//    var map: [[Int]] = Array(repeating: Array(repeating: INF, count: n+1), count: n+1)
//
//    for result in results {
//        let win = result[0]
//        let lose = result[1]
//        map[win][lose] = 1
//        map[lose][win] = -1
//    }
//
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                if(map[i][j] == INF) {
//                    if(map[i][k] == 1 && map[k][j] == 1) {
//                        map[i][j] = 1
//                    }
//                    if(map[i][k] == -1 && map[k][j] == -1) {
//                        map[i][j] = -1
//                    }
//                }
//            }
//        }
//    }
//
//    var answer = 0
//    for i in 1...n {
//        var isInf: Bool = false
//        for j in 1...n {
//            if(i != j && map[i][j] == INF) {
//                isInf = true
//                break
//            }
//        }
//        answer += isInf ? 0 : 1
//    }
//
//    return answer
//}


