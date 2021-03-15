//
//  15552 빠른 A+B (시간초과).swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/15.
//

func main4() {
    let n = Int(readLine()!)!
    for _ in 0..<n {
        let inputs = readLine()!.split(separator: " ").map { Int($0)! }
        print(inputs[0]+inputs[1])
    }
}
