//
//  15649 N과 M (1) (오답).swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/04/02.
//

var array: [Int] = []
func getArray(_ n: Int) {
    for i in 1...n {
        array.append(i)
    }
}

func printArr(_ k: Int) {
    for i in 0..<k {
        print(array[i], terminator: " ")
    }
}

func perm(_ depth: Int, _ n: Int, _ k: Int) {
    if(depth == k) {
        printArr(k)
        print()
        return
    }
    for i in depth..<n {
        array.swapAt(i, depth)
        perm(depth+1, n, k)
        array.swapAt(i, depth)
    }
}
func main1() {
    let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = datas[0], k = datas[1]
    getArray(n)
    perm(0, n, k)
}
