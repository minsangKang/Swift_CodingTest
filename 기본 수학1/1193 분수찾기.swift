//
//  1193 분수찾기.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/19.
//

func main3() {
    //1 : 1
    //2 : 3 : +
    //3 : 6 : -
    //4 : 10 : +
    let num = Int(readLine()!)!
    var i: Int = 0
    var sum: Int = 0
    while true {
        i += 1
        sum += i
        if(num <= sum) {
            if(i%2 == 1) {
                let child: Int = sum-num+1
                let parent: Int = i+1-child
                print("\(child)/\(parent)")
            } else {
                let parent: Int = sum-num+1
                let child: Int = i+1-parent
                print("\(child)/\(parent)")
            }
            break
        }
    }
}
