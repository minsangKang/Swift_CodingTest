//
//  2588 곱셈.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/14.
//

func main11() {
    let A = Int(readLine()!)!
    let B = Int(readLine()!)!
    
    print(A*(B%10))
    print(A*(B/10%10))
    print(A*(B/100))
    print(A*B)
}
