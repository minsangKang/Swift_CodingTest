//
//  2108 통계학.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/28.
//

import Foundation
func main4() {
    let N = Int(readLine()!)!
    var datas: [Int] = []
    var dictionary = [Int: Int]()
    var max: Int = 1
    var sum: Int = 0
    for _ in 0..<N {
        let input = Int(readLine()!)!
        datas.append(input)
        sum += input
        if let count = dictionary[input] {
            dictionary[input] = count+1
            if(count+1 > max) {
                max = count+1
            }
        } else {
            dictionary[input] = 1
        }
    }
    let temp = Double(sum)/Double(N)
    print(Int(temp.rounded())) //1
    datas = datas.sorted()
    print(datas[N/2]) //2
    
    //최빈값
    var maxArray: [Int] = []
    for (key, value) in dictionary where value == max {
        maxArray.append(key)
    }
    if(maxArray.count == 1) {
        print(maxArray[0])
    } else {
        print(maxArray.sorted()[1])
    }
    
    let term = datas.last! - datas.first!
    print(term) //4
}
