//
//  기능개발.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/23.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var speeds = speeds
    var restDays: [Int] = []
    var result: [Int] = []
    for p in progresses { restDays.append(100-p) } //[7, 60, 45]
    print(restDays)
    
    while(true) {
        var day = restDays[0]/speeds[0]
        if(restDays[0]%speeds[0] != 0) { day += 1 }
        
        var count: Int = 0
        var start = 0
        var last = 0
        var end: Bool = false
        for i in 0..<restDays.count {
            restDays[i] -= day*speeds[i]
            if(restDays[i] <= 0 && !end) {
                count += 1
            } else {
                if(!end) {
                    end = true
                    start = i
                }
                last = i
            }
        }
        result.append(count)
        if(start != 0) {
            restDays = Array(restDays[start...last])
            speeds = Array(speeds[start...last])
        } else {
            break
        }
    }
    
    return result
}
