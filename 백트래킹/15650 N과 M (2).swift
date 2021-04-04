//
//  15650 N과 M (2).swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/04/04.
//

var check: [Bool] = []
var array: [Int] = []

func combi(_ from: Int, _ n: Int, _ count: Int, _ length: Int) {
    if(count == length) {
        var result = ""
        for (index, value) in check.enumerated() where value == true {
            result += "\(array[index]) "
        }
        print(result)
    }
    
    for i in from..<n {
        if(check[i] == false) {
            check[i] = true
            combi(i, n, count+1, length)
            check[i] = false
        }
    }
}

func main2() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = datas[0], length = datas[1]
    for i in 1...n {
        array.append(i)
    }
    check = Array(repeating: false, count: n)
    combi(0, n, 0, length)
}
