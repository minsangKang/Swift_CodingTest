//
//  2447 별 찍기 - 10.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

//func printStar(_ i: Int, _ j: Int, _ N: Int) {
//    if(i%3 == 1 && j%3 == 1) { //크기3일때의 빈칸 && 항상 비어지는 빈칸
//        print(" ", terminator: "")
//    } else if(N == 1) { //크기3일때 빈칸이 아닌경우
//        print("*", terminator: "")
//    } else { //크기를 3으로 줄여야 하는경우
//        printStar(i/3, j/3, N/3)
//    }
//}
//func main3() {
//    let N = Int(readLine()!)!
//    for i in 0..<N {
//        for j in 0..<N {
//            printStar(i, j, N)
//        }
//        print()
//    }
//}
func setArray(_ arr: [[String]], _ N: Int) -> [[String]]{
    var array = arr
    for i in 0..<N {
        for j in 0..<N {
            var x = i
            var y = j
            
            while(x != 0) {
                if(x%3 == 1 && y%3 == 1) {
                    array[i][j] = " "
                    break
                }
                x /= 3
                y /= 3
            }
        }
    }
    return array
}
func main3() {
    let N = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: "*", count: N), count: N)
    arr = setArray(arr, N)
    
    for i in 0..<N {
        var result: String = ""
        for j in 0..<N {
            result += arr[i][j]
        }
        print(result)
    }
}
