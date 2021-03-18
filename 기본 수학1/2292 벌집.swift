//
//  2292 벌집.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/18.
//

func main2() {
    //1~6 : 2 : 6*1
    //7~18 : 3 : 6*3
    //19~36 : 4 : 6*6
    let num = Int(readLine()!)!-1
    if(num == 0) {
        print(1)
    } else {
        var sum = 0
        var count = 1
        while true {
            sum += 6*count
            if(num <= sum) {
                print(count+1)
                break
            }
            count += 1
        }
    }
}
