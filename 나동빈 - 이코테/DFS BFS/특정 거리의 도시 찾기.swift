//
//  특정 거리의 도시 찾기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/03.
//

import Foundation

public struct Queue<T> {
    var array = [T?]()
    fileprivate var head = 0

    public var isEmpty: Bool {
        return count == 0
    }

    public var count: Int {
        return array.count - head
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }

    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }

        array[head] = nil
        head += 1

        let percentage = Double(head)/Double(array.count)
        if (array.count > 50 || percentage > 0.25) {
            array.removeFirst(head)
            head = 0
        }
        return element
    }
    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}

func main() {
    let datas = readLine()!.split(separator: " ").map() { Int(String($0))! }
    let N: Int = datas[0] //도시수
    let M: Int = datas[1] //간선수
    let K: Int = datas[2] //구하는 거리값
    let X: Int = datas[3] //출발위치
    var graph: [[Int]] = Array(repeating: [], count: N+1)
    var passed: [Int] = Array(repeating: -1, count: N+1)

    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map() { Int(String($0))! }
        graph[input[0]].append(input[1])
    }

    var results: [Int] = []
    var queue = Queue<Int>()
    queue.enqueue(X)
    passed[X] = 0
    while(!queue.isEmpty) {
        let start = queue.dequeue()!
        if(passed[start] >= K) { continue } //문제

        for go in graph[start] {
            if(passed[go] == -1) {
                passed[go] = passed[start]+1
                queue.enqueue(go)
                if(passed[start]+1 == K) { results.append(go) } //문제
            }
        }
    }

    results.sort()
    if(results.isEmpty) { print(-1) }
    else {
        for i in results { print(i) }
    }

}

func main() {
    let datas = readLine()!.split(separator: " ").map() { Int(String($0))! }
    let N: Int = datas[0] //도시수
    let M: Int = datas[1] //간선수
    let K: Int = datas[2] //구하는 거리값
    let X: Int = datas[3] //출발위치
    var graph: [[Int]] = Array(repeating: [], count: N+1)
    var passed: [Int] = Array(repeating: -1, count: N+1)
    
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map() { Int(String($0))! }
        graph[input[0]].append(input[1])
    }
    
    var results: [Int] = []
    var queue: [Int] = []
    queue.append(X)
    passed[X] = 0
    while(!queue.isEmpty) {
        let start = queue.removeFirst()
        if(passed[start] >= K) { continue } //문제
        
        for go in graph[start] {
            if(passed[go] == -1) {
                passed[go] = passed[start]+1
                queue.append(go)
                if(passed[start]+1 == K) { results.append(go) } //문제
            }
        }
    }
    
    results.sort()
    if(results.isEmpty) { print(-1) }
    else {
        for i in results { print(i) }
    }
    
}
