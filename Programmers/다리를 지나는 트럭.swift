//
//  다리를 지나는 트럭.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/22.
//

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    let totalCount: Int = truck_weights.count
    var sumTime: Int = 0
    var wait: [Int] = truck_weights
    var queue: [Int] = Array(repeating: 0, count: bridge_length)
    var finish: [Int] = []
    var currentWeight: Int = 0
    
    while(finish.count != totalCount) {
        if(!wait.isEmpty) {
            //마지막 차량 꺼내기, 시간 증가
//            print(finish, queue, wait)
            let end = queue.removeFirst()
            currentWeight -= end
            sumTime += 1
            if(end != 0) { finish.append(end) }
            //차 추가가 가능한 경우 추가
            let temp = wait.first!
            if(currentWeight+temp <= weight) {
                let start = wait.removeFirst()
                queue.append(start)
                currentWeight += start
            } else {
                queue.append(0)
            }
        } else {
//            print(finish, queue, wait)
            let end = queue.removeFirst()
            sumTime += 1
            if(end != 0) { finish.append(end) }
        }
    }
    
    return sumTime
}
