//
//  미로 탈출.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/03.
//

import Foundation

public struct Queue<T> {
    fileprivate var array = [T?]()
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
    let N: Int = datas[0]
    let M: Int = datas[1]
    var map: [[Int]] = []
    for _ in 0..<N {
        let m = readLine()!.map() { Int(String($0))! }
        map.append(m)
    }
    
    let directions: [(Int,Int)] = [(-1,0), (0,1), (1,0), (0,-1)]
    var queue = Queue<(Int,Int)>()
    queue.enqueue((0, 0))
    //미로 움직이기 시작
    while(!queue.isEmpty) {
        let current = queue.dequeue()!
        //4방향 이동
        for i in 0..<4 {
            let nR = current.0+directions[i].0
            let nC = current.1+directions[i].1
            if(nR < 0 || nR >= N || nC < 0 || nC >= M) {
                continue
            }
            if(map[nR][nC] == 0) {
                continue
            }
            //이동회수 저장
            if(map[nR][nC] == 1) {
                map[nR][nC] = map[current.0][current.1]+1
                queue.enqueue((nR,nC))
            }
        }
    }
    print(map[N-1][M-1])
}
