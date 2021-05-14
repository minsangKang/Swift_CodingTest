//
//  모의고사.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/05/15.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let per1 = [1,2,3,4,5] //5
    let per2 = [2,1,2,3,2,4,2,5] //8
    let per3 = [3,3,1,1,2,2,4,4,5,5,] //10

    var scores: [Int] = [0,0,0]

    for i in 0..<answers.count {
        if(answers[i] == per1[i%5]) {
            scores[0] += 1
        }
        if(answers[i] == per2[i%8]) {
            scores[1] += 1
        }
        if(answers[i] == per3[i%10]) {
            scores[2] += 1
        }
    }
    let max = scores.max()
    var maxCount: Int = 0
    var maxIndex: Int = 0
    var results: [(Int,Int)] = []
    for i in 0..<3 {
        if(scores[i] == max) {
            maxCount += 1
            maxIndex = i
            results.append((i+1, scores[i]))
        }
    }

    if(maxCount == 1) {
        return [maxIndex+1]
    } else {
        results.sort(by: {$0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1})
        var returnResult: [Int] = []
        for value in results {
            returnResult.append(value.0)
        }

        return returnResult
    }
}
