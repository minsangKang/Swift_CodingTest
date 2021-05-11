//
//  1546 평균.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/16.
//

func main5() {
    let num = Float(readLine()!)!
    var datas = readLine()!.split(separator: " ").map { Float(String($0))! }
    let max = datas.max()!
    var result: Float = 0
    for i in 0...datas.count-1 {
        datas[i] = datas[i]/max*100
        result += datas[i]
    }
    print(result/num)
}
