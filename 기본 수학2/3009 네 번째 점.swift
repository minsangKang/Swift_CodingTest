//
//  3009 네 번째 점.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/23.
//

func main8() {
    var array_x: [Int] = []
    var array_y: [Int] = []
    for _ in 1...3 {
        let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
        array_x.append(inputs[0])
        array_y.append(inputs[1])
    }
    var result_x: Int = 0
    var result_y: Int = 0
    if(array_x[0] == array_x[1]) {
        result_x = array_x[2]
    } else if(array_x[0] == array_x[2]){
        result_x = array_x[1]
    } else {
        result_x = array_x[0]
    }
    if(array_y[0] == array_y[1]) {
        result_y = array_y[2]
    } else if(array_y[0] == array_y[2]){
        result_y = array_y[1]
    } else {
        result_y = array_y[0]
    }
    print(result_x, result_y)
}
