//
//  1929 소수 구하기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/23.
//

func getBools() -> [Bool] {
    var bools: [Bool] = Array(repeating: true, count: 1000001)
    bools[0] = false
    bools[1] = false
    for i in 2...1000000 {
        if(bools[i] == true) {
            var j: Int = 2
            while (i*j<=1000000) {
                bools[i*j] = false
                j += 1
            }
        }
    }
    return bools
}
func main4() {
    let bools = getBools()
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = datas[0], to = datas[1]
    for i in from...to where bools[i] == true {
        print(i)
    }
}
