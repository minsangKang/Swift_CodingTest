//
//  프린터.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/22.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorities = priorities
    var location = location
    var count: Int = 0
    
    while(true) {
        let temp = priorities.removeFirst()
        location -= 1
        if(priorities.count == 0) {
            count += 1
            break
        }
        
        if(temp < priorities.max()!)   {
            priorities.append(temp)
            if(location == -1) {
                location = priorities.count-1
            }
            
        } else if(temp >= priorities.max()!) {
            count += 1
            if(location == -1) {
                break
            }
        }
    }
    return count
}
