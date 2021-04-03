//
//  15649 N과 M (1).swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/04/03.
//

func combi_noDuple_sorted(_ array: [Int], _ n: Int, _ length: Int) {
    var array = array
    if(array.count == length) {
        var result = ""
        for num in array {
            result += "\(num) "
        }
        print(result)
        return
    }
    
    for i in 1...n {
        if(!array.contains(i)) {
            array.append(i)
            combi_noDuple_sorted(array, n, length)
            array.removeLast()
        }
    }
}

func main1() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = datas[0], length = datas[1]
    combi_noDuple_sorted([], n, length)
}
