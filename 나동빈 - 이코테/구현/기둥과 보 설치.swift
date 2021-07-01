//
//  기둥과 보 설치.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/01.
//

import Foundation

func isPossible(_ map: [[Int]]) -> Bool {
    for m in map {
        let x = m[0]
        let y = m[1]
        let plate = m[2]
        //기둥인 경우 확인 : 바닥, 기둥 위, plate 좌, 우 위
        if(plate == 0) {
            if(y == 0 || map.contains([x, y-1, 0]) || map.contains([x-1, y, 1]) || map.contains([x, y, 1])) {
                continue
            }
            return false
        }
        //보인 경우 확인 : 기둥 위, 양부분이 보
        else {
            if(map.contains([x, y-1, 0]) || map.contains([x+1, y-1, 0]) || (map.contains([x-1, y, 1]) && map.contains([x+1, y, 1]))) {
                continue
            }
            return false
        }
        
    }
    return true
}

func solution(_ n:Int, _ build_frame:[[Int]]) -> [[Int]] {
    //x, y : 위치
    //a : 0(기둥), 1(보)
    //b : 0(삭제), 1(설치)
    var map: [[Int]] = []
    for frame in build_frame {
        let x = frame[0]
        let y = frame[1]
        let plate = frame[2]
        let make = frame[3]
        
        let tempFrame = [x,y,plate]
        //삭제하는 경우
        if(make == 0) {
            for i in 0..<map.count {
                if(map[i] == tempFrame) {
                    map.remove(at: i)
                    break
                }
            }
            if(!isPossible(map)) {
                map.append(tempFrame)
            }
        }
        //설치하는 경우
        else {
            map.append(tempFrame)
            if(!isPossible(map)) {
                map.removeLast()
            }
        }
    }
    //최종 map 상태, sort 하여 반환
    return map.sorted(by: { $0[0] == $1[0] ? ($0[1] == $1[1] ? $0[2] < $1[2] : $0[1] < $1[1]) : $0[0] < $1[0] })
}
