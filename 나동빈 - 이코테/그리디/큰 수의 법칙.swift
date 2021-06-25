//
//  큰 수의 법칙.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/06/25.
//

import Foundation
//92P 큰 수의 법칙
func main() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let M: Int = datas[1]
    let K: Int = datas[2]
    var result: Int = 0
    
    var array: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    array = array.sorted { $0 > $1 }
    
    let termCount: Int = M/(K+1)
    result += termCount*array[0]*K
    result += termCount*array[1]
    result += (M-(termCount*(K+1)))*array[1]
    
    print(result)
}
