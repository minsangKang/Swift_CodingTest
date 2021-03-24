//
//  2447 별 찍기 - 10 (시간초과).swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/24.
//

func printStar(_ i: Int, _ j: Int, _ N: Int) {
    if(i%3 == 1 && j%3 == 1) { //크기3일때의 빈칸 && 항상 비어지는 빈칸
        print(" ", terminator: "")
    } else if(N == 1) { //크기3일때 빈칸이 아닌경우
        print("*", terminator: "")
    } else { //크기를 3으로 줄여야 하는경우
        printStar(i/3, j/3, N/3)
    }
}
func main3() {
    let N = Int(readLine()!)!
    for i in 0..<N {
        for j in 0..<N {
            printStar(i, j, N)
        }
        print()
    }
}
