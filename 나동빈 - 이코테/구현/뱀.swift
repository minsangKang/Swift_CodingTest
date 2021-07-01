//
//  뱀.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/01.
//

import Foundation

let N: Int = Int(readLine()!)! //맵크기
let K: Int = Int(readLine()!)! //사과수

var map: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)
var apple: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)
for _ in 0..<K {
    let datas: [Int] = readLine()!.split(separator: " ").map() { Int(String($0))! }
    let row: Int = datas[0]
    let column: Int = datas[1]
    //(row, column) 저장
    apple[row][column] = 1
}
//var actions: [(Int,String)] = []
let L: Int = Int(readLine()!)! //방향전환수
var actions: [(Int,String)] = (0..<L).map { _ in
    let input = readLine()!.split(separator: " ").map { String($0) }
    return (Int(input[0])!, input[1])
}


var headRow: Int = 1
var headColumn: Int = 1
var tailRow: Int = 1
var tailColumn: Int = 1
var direction: Int = 0 //우측방향
let directions: [(Int, Int)] = [(0,1), (1,0), (0,-1), (-1,0)] //뱀 방향
var headHistorys: [(Int,Int)] = []
var idx: Int = 0
map[1][1] = 1 //뱀을 1로 표시
//본게임 시작
var time: Int = 0
while(true) {
    //머리이동
    time += 1
    headRow += directions[direction].0
    headColumn += directions[direction].1
    headHistorys.append((headRow, headColumn))
    //게임종료 여부 체크
    if(headRow > N || headRow < 1 || headColumn > N || headColumn < 1) {
        break
    }
    if(map[headRow][headColumn] == 1) {
        break
    }
    //머리위치 저장
    map[headRow][headColumn] = 1
    //사과여부 체크, 꼬리 이동
    if(apple[headRow][headColumn] == 0) {
        map[tailRow][tailColumn] = 0
        let nextPoint: (Int,Int) = headHistorys.removeFirst()
        tailRow = nextPoint.0
        tailColumn = nextPoint.1
    } else {
        apple[headRow][headColumn] = 0
    }
    //회전 체크
    if(actions[idx].0 == time) {
        if(actions[idx].1 == "L") {
            direction -= 1
            if(direction == -1) { direction = 3 }
        } else {
            direction =  (direction+1)%4
        }
        idx += 1
    }
}

print(time)
