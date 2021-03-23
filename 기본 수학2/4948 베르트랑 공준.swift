//
//  4948 베르트랑 공준.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/23.
//

func getBools() -> [Bool] {
    let num: Int = 123456*2
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
func main5() {
    let bools = getBools()
    while true {
        let input = Int(readLine()!)!
        if(input == 0) {
            break
        }
        var count: Int = 0
        for i in input+1...2*input where bools[i] == true {
            count += 1
        }
        print(count)
    }
}
