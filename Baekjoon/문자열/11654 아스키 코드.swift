//
//  11654 아스키 코드.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main1() {
    let input = readLine()!
    let result = Int(UnicodeScalar(input)!.value)
    print(result)
}
