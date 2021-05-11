//
//  10757 큰 수 A+B.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/20.
//

func main8() {
    let datas = readLine()!.split(separator: " ").map { String($0) }
    let A = datas[0].map { String($0) }
    let B = datas[1].map { String($0) }
    let maxCount = max(A.count, B.count)
    let minCount = min(A.count, B.count)
    let term = maxCount - minCount
    var result: [String] = []
    var upNum: Int = 0
    if(A.count == B.count) {
        for i in (0...maxCount-1).reversed() {
            let sum: Int = Int(A[i])!+Int(B[i])! + upNum
            result.append(String(sum%10))
            upNum = sum/10
        }
        if(upNum == 1) {
            result.append("1")
        }
    } else if(maxCount == A.count) {
        for i in (term...maxCount-1).reversed() {
            let sum: Int = Int(A[i])!+Int(B[i-term])! + upNum
            result.append(String(sum%10))
            upNum = sum/10
        }
        var sum: Int = 0
        for i in (0...term-1).reversed() {
            sum = Int(A[i])!+upNum
            result.append(String(sum%10))
            upNum = sum/10
            if(i == 0 && upNum == 1) {
                result.append("1")
                break
            }
        }
    } else {
        for i in (term...maxCount-1).reversed() {
            let sum: Int = Int(B[i])!+Int(A[i-term])! + upNum
            result.append(String(sum%10))
            upNum = sum/10
        }
        var sum: Int = 0
        for i in (0...term-1).reversed() {
            sum = Int(B[i])!+upNum
            result.append(String(sum%10))
            upNum = sum/10
            if(i == 0 && upNum == 1) {
                result.append("1")
                break
            }
        }
    }
    for i in (0...result.count-1).reversed() {
        print(result[i], terminator: "")
    }
}
