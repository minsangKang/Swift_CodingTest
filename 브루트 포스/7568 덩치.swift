//
//  7568 덩치.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/26.
//

func main3() {
    let n = Int(readLine()!)!
    var weights: [Int] = []
    var heights: [Int] = []
    var result: [Int] = []
    for _ in 1...n {
        let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
        weights.append(datas[0])
        heights.append(datas[1])
    }
    for i in 0..<n {
        var count: Int = 1
        let w = weights[i]
        let h = heights[i]
        for j in 0..<n {
            if(j == i) {
                continue
            }
            if(w < weights[j] && h < heights[j]) {
                count += 1
            }
        }
        result.append(count)
    }
    for i in result {
        print(i, terminator: " ")
    }
}
