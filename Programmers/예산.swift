//
//  예산.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/22.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let d = d.sorted()
    var sum: Int = 0
    var count: Int = 0
    
    for n in d {
        if sum+n <= budget {
            sum += n
            count += 1
        }
    }
    
    return count
}
