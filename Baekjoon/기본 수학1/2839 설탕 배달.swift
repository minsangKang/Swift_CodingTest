//
//  2839 설탕 배달.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/20.
//

func main7() {
    let N = Int(readLine()!)!
    var num5: Int = N/5
    var rest: Int = N - num5*5
    var num3: Int = rest/3
    while true {
        if(num5 < 0) {
            print(-1)
            break
        } else if(num5*5 + num3*3 < N) {
            num5 -= 1
            rest += 5
            num3 = rest/3
        } else if(num5*5 + num3*3 == N) {
            print(num5+num3)
            break
        } else {
            print(-1)
            break
        }
    }
}
