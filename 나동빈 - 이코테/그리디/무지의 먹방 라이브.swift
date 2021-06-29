//
//  무지의 먹방 라이브.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/29.
//

import Foundation

//func solution(_ food_times:[Int], _ k:Int64) -> Int {
//    var index: Int = 0
//    var time: Int = 0
//    var food_times = food_times
//    var result: Int = 0
//    while(time != k) {
//        if(food_times.isEmpty) {
//            break
//        }
//        if(food_times[index] != 0) {
//            food_times[index] -= 1
//            index = (index+1)%food_times.count
//            time += 1
//        }
//        else {
//            index = (index+1)%food_times.count
//        }
//    }
//    if(result != -1) {
//        result = index+1
//    }
//    return result
//}

import Foundation

class PriorityQueue<T> {
    var heap: [T] = []
    let comparing: (_ o1: T,_ o2: T) -> Bool
    
    init(_ comparing: @escaping (_ o1: T,_ o2: T) -> Bool) {
        self.comparing = comparing
    }
    
    func size() -> Int { heap.count }
    
    func isEmpty() -> Bool { heap.isEmpty }
    
    func clear() { heap.removeAll() }
    
    func peek() -> T? { heap.first }
    
    func push(_ value: T) {
        heap.append(value)
        if heap.count == 1 { return }
        var valueIndex = heap.count - 1
        var parentIndex = (valueIndex-1) / 2
        while !comparing(heap[parentIndex], heap[valueIndex]) {
            heap.swapAt(valueIndex, parentIndex)
            valueIndex = parentIndex
            parentIndex = (valueIndex-1) / 2
            if valueIndex == 0 { break }
        }
    }
    
    func pop() -> T? {
        if heap.count == 0 { return nil }
        if heap.count == 1 { return heap.removeFirst() }
        
        func isChildEmpty(_ value: Int,_ left: Int,_ right: Int) -> Bool {
            if heap.count <= left { return true }
            if heap.count > right { return false }
            if comparing(heap[value], heap[left]) { return true }
            heap.swapAt(value, left)
            return true
        }
        
        heap.swapAt(0, heap.count-1)
        let answer = heap.removeLast()
        
        var valueIndex = 0
        var leftIndex = valueIndex * 2 + 1
        var rightIndex = valueIndex * 2 + 2
        
        if isChildEmpty(valueIndex, leftIndex, rightIndex) { return answer }
        
        while !comparing(heap[valueIndex], heap[leftIndex]) || !comparing(heap[valueIndex], heap[rightIndex]) {
            let index = comparing(heap[leftIndex], heap[rightIndex]) ? leftIndex : rightIndex
            heap.swapAt(valueIndex, index)
            valueIndex = index
            leftIndex = valueIndex * 2 + 1
            rightIndex = valueIndex * 2 + 2
            if isChildEmpty(valueIndex, leftIndex, rightIndex) { break }
        }
        return answer
    }
}


//func solution(_ food_times:[Int], _ k:Int64) -> Int {
//    let k = Int(k)
//    if(food_times.reduce(0, +) <= k) {
//        return -1
//    }
//
//    var foodPriorityQueue = PriorityQueue<(Int,Int)>() {
//        return $0.0 <= $1.0
//    }
//    for i in 0..<food_times.count {
//        foodPriorityQueue.push((food_times[i],i+1))
//    }
//
//    var sum_value: Int = 0 //먹기 위해 사용한 시간
//    var previous: Int = 0 //직전에 다 먹은 음식 시간
//    var length: Int = food_times.count //남은 음식의 개수
//
//    // sum_value + (현재의 음식 시간 - 이전 음식 시간)*현재 음식 개수와 k 비교
//    while(sum_value + ((foodPriorityQueue.peek()!.0 - previous)*length) <= k) {
//        let now: Int = foodPriorityQueue.pop()!.0
//        sum_value += (now - previous)*length
//        length -= 1 //다 먹은 음식 제외
//        previous = now //이전 음식 시간 재설정
//    }
//
//    //남은 음식 중에서 몇 번째 음식인지 확인하여 출력
//    let result = foodPriorityQueue.heap.sorted(by: { $0.1 < $1.1 })
//    return result[(k - sum_value)%length].1
//}

func solution(_ food_times:[Int], _ k:Int64) -> Int {
    let k = Int(k)
    if food_times.reduce(0, +) <= k {
        return -1
    }
    
    let foodPriorityQueue = PriorityQueue<(Int,Int)>() {
        return $0.0 <= $1.0
    }
    for i in 0..<food_times.count {
        foodPriorityQueue.push((food_times[i],i+1))
    }
    
    var sum_foodTime: Int = 0
    var prev_foodTime: Int = 0
    var currentLength: Int = food_times.count
    
    while(sum_foodTime + ((foodPriorityQueue.peek()!.0 - prev_foodTime)*currentLength) <= k) {
        let popFoodTime = foodPriorityQueue.pop()!.0
        sum_foodTime += (popFoodTime - prev_foodTime)*currentLength
        prev_foodTime = popFoodTime
        currentLength -= 1
    }
    
    let result = foodPriorityQueue.heap.sorted(by: { $0.1 < $1.1 })
    return result[(k - sum_foodTime)%currentLength].1
}
