//
//  2231 분해합.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/25.
//

func getNum(_ n: Int) -> Int {
    var num = n
    var result: Int = num
    while (num != 0) {
        result += num%10
        num /= 10
    }
    return result
}
func main2() {
    let num = Int(readLine()!)!
    for i in 1...num {
        if(getNum(i) == num) {
            print(i)
            return
        }
    }
    print(0)
}
