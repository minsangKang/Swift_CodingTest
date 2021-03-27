//
//  10989 수 정렬하기 3 (시간초과).swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/27.
//

var array: [Int] = Array(repeating: 0, count: 10001)
func main1() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        array[Int(readLine()!)!] += 1
    }
    for i in 1...10000 {
        let count = array[i]
        if(count != 0) {
            for _ in 1...count {
                print(i)
            }
        }
    }
}
