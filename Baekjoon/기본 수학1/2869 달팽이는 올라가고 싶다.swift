//
//  2869 달팽이는 올라가고 싶다.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/19.
//

func main4() {
    //plus * x - minus * (x-1) >= height
    //x >= (height - minus) / (plus - minus)
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let plus = datas[0], minus = datas[1], height = datas[2]
    if(plus >= height) {
        print(1)
        return
    }
    var days: Int = (height-minus)/(plus-minus)
    if((height-minus)%(plus-minus) != 0) {
        days += 1
    }
    print(days)
}
