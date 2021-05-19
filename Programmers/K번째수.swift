//
//  K번째수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/19.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var results: [Int] = []
    
    for i in 0..<commands.count {
        let I = commands[i][0]
        let J = commands[i][1]
        let K = commands[i][2]
        
        var temp: [Int] = []
        for ii in I-1...J-1 {
            temp.append(array[ii])
        }
        temp = temp.sorted()
        results.append(temp[K-1])
    }
    return results
}
