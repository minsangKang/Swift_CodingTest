//
//  4344 평균은 넘겠지.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main7() {
    let num = Int(readLine()!)!
    for _ in 1...num {
        let inputs = readLine()!.split(separator: " ").map { Float(String($0))! }
        var sum: Float = 0
        for i in 1...inputs.count-1 {
            sum += inputs[i]
        }
        let M = sum/inputs[0]
        var count: Float = 0
        for i in 1...inputs.count-1 where inputs[i]>M {
            count += 1
        }
        let formatter = NumberFormatter()
        formatter.roundingMode = .halfUp
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        let result = formatter.string(from: NSNumber(value: count/inputs[0]*100))!
        print("\(result)%")
    }
}
