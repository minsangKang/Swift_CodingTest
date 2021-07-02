//
//  외벽 점검.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/07/02.
//

import Foundation

//func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
//    var dist = dist.sorted()
//    let weakTerm: [Int] = []
//    for i in 0..<weak.count {
//        if(i == weak.count-1) {
//            let term: Int = (n-weak[i])-weak[0]
//            weakTerm.append(term)
//        }
//        else {
//            let term: Int = weak[i+1]-weak[i]
//            weakTerm.append(term)
//        }
//    }
//    //각 취약지점간의 거리 저장
//    for _ in 0..<2 {
//        let max: Int = weakTerm.max()
//        if let idx: Int = weakTerm.firstIndex(of: max) {
//            weakTerm.remove(at: idx)
//        }
//    }
//
//}

func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let head = [first]
    let subcombos = combos(elements: elements, k: k - 1)
    var ret = subcombos.map { head + $0 }
    ret += combos(elements: elements.dropFirst(), k: k)

    return ret
}

func combos<T>(_ elements: Array<T>, _ k: Int) -> [[T]] {
    return combos(elements: ArraySlice(elements), k: k)
}

func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
    let length: Int = weak.count
    //원형 : 2배길이의 배열로 수정하여 풀이
    var weak = weak
    for i in 0..<weak.count {
        weak.append(weak[i]+n)
    }
    var answer: Int = dist.count+1
    //취약점 시작지점을 하나씩 설정하여 체크
    for startIndex in 0..<length {
        //투입인원들의 모든경우의 순서에 따라 체크
        let cases: [[Int]] = combos(dist, dist.count)
        for peoples in cases {
            var count: Int = 1
            var lastWeakNum: Int = weak[startIndex]+peoples[count-1]
            
            for index in startIndex..<startIndex+length {
                if(lastWeakNum < weak[index]) {
                    //추가 투입
                    count += 1
                    //추가투입이 불가능한지 체크
                    if(count > dist.count) {
                        break
                    }
                    lastWeakNum = weak[index]+peoples[count-1]
                }
            }
            answer = min(answer, count)
        }
    }
    
    if(answer > dist.count) {
        return -1
    }
    return answer
}
