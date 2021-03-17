//
//  2908 상수.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/17.
//

func main7() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let beforeA = input[0]
    let beforeB = input[1]
    let afterA = beforeA/100 + (beforeA/10%10)*10 + beforeA%10*100
    let afterB = beforeB/100 + (beforeB/10%10)*10 + beforeB%10*100
    let result = afterA>afterB ? afterA : afterB
    print(result)
}
