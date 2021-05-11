//
//  1978 소수 찾기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/22.
//

func check(_ input: Int) -> Bool {
    if(input == 1) {
        return false
    } else if(input == 2) {
        return true
    } else {
        for i in 2...input-1 {
            if(input%i == 0) {
                return false
            }
        }
    }
    return true
}
func main1() {
    _ = Int(readLine()!)!
    var count: Int = 0
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    for i in datas {
        if(check(i)) {
            count += 1
        }
    }
    print(count)
}
