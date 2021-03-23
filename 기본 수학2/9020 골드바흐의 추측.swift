//
//  9020 골드바흐의 추측.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/23.
//

func getBools() -> [Bool] {
    let num: Int = 10000
    var bools: [Bool] = Array(repeating: true, count: num+1)
    bools[0] = false
    bools[1] = false
    for i in 2...num {
        if(bools[i] == true) {
            var j: Int = 2
            while (i*j<=num) {
                bools[i*j] = false
                j += 1
            }
        }
    }
    return bools
}
func main6() {
    let bools = getBools()
    let num = Int(readLine()!)!
    for _ in 1...num {
        let input = Int(readLine()!)!
        var i = input/2
        while true {
            if(bools[i] == true && bools[input-i] == true) {
                print(i, input-i)
                break
            } else {
                i -= 1
            }
        }
    }
}
